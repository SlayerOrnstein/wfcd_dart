import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'calendar.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawCalendar extends BaseContentObject with RawCalendarMappable {
  RawCalendar({
    required super.activation,
    required super.expiry,
    required this.season,
    required this.yearIteration,
    required this.version,
    required this.days,
  }) : super(id: {});

  final String season;
  final int yearIteration;
  final int version;
  final List<RawCalendarDay> days;
}

@MappableRecord()
typedef RawCalendarDayEvent = ({
  String type,
  String? challenge,
  String? reward,
  String? upgrade,
  String? dialogueName,
  String? dialogueConvo,
});

@MappableClass()
class RawCalendarDay with RawCalendarDayMappable {
  RawCalendarDay({required this.day, required this.events});

  final int day;
  final List<RawCalendarDayEvent> events;
}

@MappableClass()
class Calendar extends WorldstateObject with CalendarMappable {
  Calendar({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.season,
    required this.loops,
    required this.days,
  });

  factory Calendar.fromRaw(RawCalendar raw, String locale) {
    return Calendar(
      id: hash(raw.days.fold<int>(0, (p, n) => p + n.day).toString()),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      season: translateSeason(raw.season),
      loops: raw.yearIteration,
      days: raw.days.map((d) => CalendarDay.fromRaw(d, locale)).toList(),
    );
  }

  final String season;
  final int loops;
  final List<CalendarDay> days;
}

@MappableClass()
class CalendarDay with CalendarDayMappable {
  CalendarDay({required this.day, required this.events});

  factory CalendarDay.fromRaw(RawCalendarDay raw, String locale) {
    final year1999 = DateTime.utc(1999);

    return CalendarDay(
      day: year1999.add(Duration(days: raw.day - 1)),
      events: raw.events.map((e) => CalendarDayEvent.fromType(e, locale)).toList(),
    );
  }

  final DateTime day;
  final List<CalendarDayEvent> events;
}

@MappableClass(discriminatorKey: 'type')
sealed class CalendarDayEvent with CalendarDayEventMappable {
  CalendarDayEvent({required this.type});

  factory CalendarDayEvent.fromType(RawCalendarDayEvent event, String locale) {
    final langs = languages(locale);
    final rawType = event.type;
    final type = langs.fetchValue(event.type);

    return switch (rawType) {
      'CET_CHALLENGE' => CalendarDayChallenge(
        type: type,
        title: langs.fetchValue(event.challenge!),
        description: langs.fetchDescription(event.challenge!),
      ),
      'CET_REWARD' => CalendarDayReward(type: type, reward: langs.fetchValue(event.reward!)),
      'CET_UPGRADE' => CalendarDayUpgrade(
        type: type,
        name: langs.fetchValue(event.upgrade!),
        description: langs.fetchDescription(event.upgrade!),
      ),
      'CET_PLOT' => CalendarDayBirthday(type: type, name: event.dialogueName!, conversation: event.dialogueConvo!),
      _ => throw Exception('$type not implmented'),
    };
  }

  final String type;
}

@MappableClass(discriminatorValue: 'CET_CHALLENGE')
final class CalendarDayChallenge extends CalendarDayEvent with CalendarDayChallengeMappable {
  CalendarDayChallenge({required super.type, required this.title, required this.description});

  final String title;
  final String description;
}

@MappableClass(discriminatorValue: 'CET_REWARD')
final class CalendarDayReward extends CalendarDayEvent with CalendarDayRewardMappable {
  CalendarDayReward({required super.type, required this.reward});

  final String reward;
}

@MappableClass(discriminatorValue: 'CET_UPGRADE')
final class CalendarDayUpgrade extends CalendarDayEvent with CalendarDayUpgradeMappable {
  CalendarDayUpgrade({required super.type, required this.name, required this.description});

  final String name;
  final String description;
}

@MappableClass(discriminatorValue: 'CET_PLOT')
final class CalendarDayBirthday extends CalendarDayEvent with CalendarDayBirthdayMappable {
  CalendarDayBirthday({required super.type, required this.name, required this.conversation});

  final String name;
  final String conversation;
}
