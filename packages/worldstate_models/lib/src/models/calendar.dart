import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'calendar.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawCalendar extends BaseContentObject with RawCalendarMappable {
  new({
    required super.activation,
    required super.expiry,
    required this.season,
    required this.yearIteration,
    required this.version,
    required this.days,
  }) : super(id: {});

  static const RawCalendar Function(Map<String, dynamic> map) fromMap = RawCalendarMapper.fromMap;

  final String season;
  final int yearIteration;
  final int version;
  final List<RawCalendarDay> days;

  Calendar toCalender(Dependency deps) => Calendar.fromRaw(this, deps);
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
  new({required this.day, required this.events});

  final int day;
  final List<RawCalendarDayEvent> events;
}

@MappableClass()
class Calendar extends WorldstateObject with CalendarMappable {
  new({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.season,
    required this.loops,
    required this.days,
  });

  factory fromRaw(RawCalendar raw, Dependency deps) {
    return Calendar(
      id: hash(raw.days.fold<int>(0, (p, n) => p + n.day).toString()),
      activation: parseDate(raw.activation),
      expiry: parseDate(raw.expiry),
      season: translateSeason(raw.season),
      loops: raw.yearIteration,
      days: raw.days.map((d) => CalendarDay.fromRaw(d, deps)).toList(),
    );
  }

  final String season;
  final int loops;
  final List<CalendarDay> days;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}

@MappableClass()
class CalendarDay with CalendarDayMappable {
  new({required this.day, required this.events});

  factory fromRaw(RawCalendarDay raw, Dependency deps) {
    final year1999 = DateTime.utc(1999);

    return CalendarDay(
      day: year1999.add(Duration(days: raw.day - 1)),
      events: raw.events.map((e) => CalendarDayEvent.fromType(e, deps)).toList(),
    );
  }

  final DateTime day;
  final List<CalendarDayEvent> events;
}

@MappableClass(discriminatorKey: 'key')
sealed class CalendarDayEvent with CalendarDayEventMappable {
  new({required this.type});

  factory fromType(RawCalendarDayEvent event, Dependency deps) {
    final rawType = CalendarEvents.fromString(event.type);

    return switch (rawType) {
      .challenge => CalendarDayChallenge(
        title: deps.langs.fetchValue(event.challenge!),
        description: deps.langs.fetchDescription(event.challenge!),
      ),
      .reward => CalendarDayReward(reward: deps.langs.fetchValue(event.reward!)),
      .upgrade => CalendarDayUpgrade(
        name: deps.langs.fetchValue(event.upgrade!),
        description: deps.langs.fetchDescription(event.upgrade!),
      ),
      .plot => CalendarDayBirthday(
        name: event.dialogueName!,
        conversation: event.dialogueConvo!,
      ),
    };
  }

  final CalendarEvents type;

  String get key => type.uniqueName;
}

@MappableClass(discriminatorValue: 'CET_CHALLENGE')
final class CalendarDayChallenge extends CalendarDayEvent with CalendarDayChallengeMappable {
  new({required this.title, required this.description}) : super(type: .challenge);

  final String title;
  final String description;
}

@MappableClass(discriminatorValue: 'CET_REWARD')
final class CalendarDayReward extends CalendarDayEvent with CalendarDayRewardMappable {
  new({required this.reward}) : super(type: .reward);

  final String reward;
}

@MappableClass(discriminatorValue: 'CET_UPGRADE')
final class CalendarDayUpgrade extends CalendarDayEvent with CalendarDayUpgradeMappable {
  new({required this.name, required this.description}) : super(type: .upgrade);

  final String name;
  final String description;
}

@MappableClass(discriminatorValue: 'CET_PLOT')
final class CalendarDayBirthday extends CalendarDayEvent with CalendarDayBirthdayMappable {
  new({required this.name, required this.conversation}) : super(type: .plot);

  final String name;
  final String conversation;
}
