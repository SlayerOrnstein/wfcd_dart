import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/utils/types.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'news.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawEvent with RawEventMappable {
  RawEvent({
    required this.id,
    required this.messages,
    required this.date,
    required this.prop,
    required this.imageUrl,
    this.priority = false,
    this.mobileOnly = false,
    this.community = false,
  });

  static const fromMap = RawEventMapper.fromMap;

  @MappableField(key: '_id')
  final JsonObject id;
  final List<JsonObject> messages;
  final JsonObject? date;
  final String? prop;
  final String? imageUrl;
  final bool priority;
  final bool mobileOnly;
  final bool community;

  News toNews({String locale = 'en'}) => News.fromRaw(this, locale);
}

@MappableClass()
class News with NewsMappable {
  News({
    required this.id,
    required this.message,
    required this.link,
    required this.imageLink,
    required this.date,
    required this.translations,
    required this.isPriority,
    required this.isUpdate,
    required this.isPrimeAccess,
    required this.isStream,
    required this.isMobileOnly,
    required this.isCommunity,
  });

  /// Used to create an instance straight from Worldstate API
  factory News.fromRaw(RawEvent event, [String locale = 'en']) {
    final date = parseDate(event.date);
    final messages = _buildTranslations(event.messages);
    final updateRegEx = RegExp('(update|hotfix)', caseSensitive: false);
    final primeAccessRegEx = RegExp('access', caseSensitive: false);
    final streamRegEx = RegExp('(devstream|prime-time|warframeinternational|stream)', caseSensitive: false);

    return News(
      id: parseId(event.id),
      message: _getMessage(messages, locale),
      link: event.prop ?? 'https://www.warframe.com/',
      imageLink: event.imageUrl ?? 'https://cdn.warframestat.us/genesis/img/news-placeholder.png',
      date: date,
      translations: messages,
      isPriority: event.priority,
      isUpdate: event.prop?.contains(updateRegEx) ?? false,
      isPrimeAccess: event.prop?.contains(primeAccessRegEx) ?? false,
      isStream: _getMessage(messages, 'en').contains(streamRegEx),
      isMobileOnly: event.mobileOnly,
      isCommunity: event.community,
    );
  }

  /// Unique ID provided by DE
  final String id;

  /// News message
  ///
  /// See [translations] for localized variants
  final String message;

  /// Any accompanied links
  final String link;

  /// Image link if possible
  final String imageLink;

  /// Date the news was posted
  final DateTime date;

  /// Translations for [message]
  final Map<String, String> translations;

  /// Whether this news has priority or not
  final bool isPriority;

  /// Whether this news is an update or not
  final bool isUpdate;

  /// Whether this news is about prime access or not
  final bool isPrimeAccess;

  /// Whether this news is about a stream or not
  final bool isStream;

  /// ?
  final bool isMobileOnly;

  /// ?
  final bool isCommunity;

  static String _getMessage(Map<String, String> messages, String langCode) {
    final message = messages[langCode] ?? messages.entries.firstOrNull?.value ?? '';
    if (message.contains('/Lotus/')) return normalizeResourceName(message);

    return message;
  }

  static Map<String, String> _buildTranslations(List<JsonObject> messages) {
    return List<Map<String, dynamic>>.from(messages).fold(
      <String, String>{},
      (prev, next) => prev
        ..putIfAbsent(
          next['LanguageCode']! as String,
          () {
            final message = next['Message']! as String;
            if (message.contains('/Lotus/')) return normalizeResourceName(message);
            return message;
          },
        ),
    );
  }
}
