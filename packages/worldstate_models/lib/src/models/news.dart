import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/utils/types.dart';
import 'package:worldstate_models/src/utils/worldstate_utils.dart';

part 'news.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawEvent with RawEventMappable {
  RawEvent({
    required this.id,
    required this.messages,
    required this.date,
    required this.priority,
    required this.prop,
    required this.imageUrl,
  });

  static const fromMap = RawEventMapper.fromMap;

  @MappableField(key: '_id')
  final JsonObject id;
  final List<JsonObject> messages;
  final JsonObject? date;
  final bool priority;
  final String? prop;
  final String? imageUrl;

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
    required this.priority,
    required this.update,
    required this.primeAccess,
    required this.stream,
    required this.translations,
  });

  /// Used to create an instance straight from Worldstate API
  factory News.fromRaw(RawEvent event, [String locale = 'en']) {
    final date = parseDate(event.date);
    final messages = _buildTranslations(event.messages);

    return News(
      id: parseId(event.id),
      message: _getMessage(messages, locale),
      link: event.prop ?? 'https://www.warframe.com/',
      imageLink: event.imageUrl ?? 'https://cdn.warframestat.us/genesis/img/news-placeholder.png',
      date: date,
      priority: event.priority,
      update: event.prop?.contains(RegExp('(update|hotfix)', caseSensitive: false)) ?? false,
      primeAccess: event.prop?.contains(RegExp('access', caseSensitive: false)) ?? false,
      stream: _getMessage(
        messages,
        'en',
      ).contains(RegExp('(devstream|prime-time|warframeinternational|stream)', caseSensitive: false)),
      translations: messages..remove(locale),
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

  /// Whether this news has priority or not
  final bool priority;

  /// Whether this news is an update or not
  final bool update;

  /// Whether this news is about prime access or not
  final bool primeAccess;

  /// Whether this news is about a stream or not
  final bool stream;

  /// Translations for [message]
  final Map<String, String> translations;

  static String _getMessage(Map<String, String> messages, String langCode) {
    return messages[langCode] ?? messages.entries.firstOrNull?.value ?? '';
  }

  static Map<String, String> _buildTranslations(List<JsonObject> messages) {
    return List<Map<String, dynamic>>.from(messages).fold(
      <String, String>{},
      (prev, next) => prev..putIfAbsent(next['LanguageCode']! as String, () => next['Message']! as String),
    );
  }
}
