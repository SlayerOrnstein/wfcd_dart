import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'calender.mapper.dart';

@MappableClass(caseStyle: CaseStyle.pascalCase)
class RawCalender extends BaseContentObject with RawCalenderMappable {
  RawCalender({
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
  final List<RawCalenderDay> days;
}

@MappableRecord()
typedef RawCalenderDayEvent = ({
  String type,
  String? challenge,
  String? reward,
  String? upgrade,
  String? dialogueName,
  String? dialogueConvo,
});

@MappableClass()
class RawCalenderDay with RawCalenderDayMappable {
  RawCalenderDay({required this.day, required this.events});

  final int day;
  final List<RawCalenderDayEvent> events;
}

@MappableClass()
class Calender extends WorldstateObject with CalenderMappable {
  Calender({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.season,
    required this.loops,
    required this.days,
  });

  factory Calender.fromRaw(RawCalender raw, String locale) {
    return Calender(
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

  factory CalendarDay.fromRaw(RawCalenderDay raw, String locale) {
    final year1999 = DateTime.utc(1999);

    return CalendarDay(
      day: year1999.add(Duration(days: raw.day - 1)),
      events: raw.events.map((e) => CalenderDayEvent.fromType(e, locale)).toList(),
    );
  }

  final DateTime day;
  final List<CalenderDayEvent> events;
}

@MappableClass(discriminatorKey: 'type')
sealed class CalenderDayEvent with CalenderDayEventMappable {
  CalenderDayEvent({required this.type});

  factory CalenderDayEvent.fromType(RawCalenderDayEvent event, String locale) {
    final langs = languages(locale);
    final rawType = event.type;
    final type = langs.fetchValue(event.type);

    return switch (rawType) {
      'CET_CHALLENGE' => CalenderDayChallenge(
        type: type,
        title: langs.fetchValue(event.challenge!),
        description: langs.fetchDescription(event.challenge!),
      ),
      'CET_REWARD' => CalenderDayReward(type: type, reward: langs.fetchValue(event.reward!)),
      'CET_UPGRADE' => CalenderDayUpgrade(
        type: type,
        name: langs.fetchValue(event.upgrade!),
        description: langs.fetchDescription(event.upgrade!),
      ),
      'CET_PLOT' => CalenderDayBirthday(type: type, name: event.dialogueName!, conversation: event.dialogueConvo!),
      _ => throw Exception('$type not implmented'),
    };
  }

  final String type;
}

@MappableClass(discriminatorValue: 'CET_CHALLENGE')
final class CalenderDayChallenge extends CalenderDayEvent with CalenderDayChallengeMappable {
  CalenderDayChallenge({required super.type, required this.title, required this.description});

  final String title;
  final String description;
}

@MappableClass(discriminatorValue: 'CET_REWARD')
final class CalenderDayReward extends CalenderDayEvent with CalenderDayRewardMappable {
  CalenderDayReward({required super.type, required this.reward});

  final String reward;
}

@MappableClass(discriminatorValue: 'CET_UPGRADE')
final class CalenderDayUpgrade extends CalenderDayEvent with CalenderDayUpgradeMappable {
  CalenderDayUpgrade({required super.type, required this.name, required this.description});

  final String name;
  final String description;
}

@MappableClass(discriminatorValue: 'CET_PLOT')
final class CalenderDayBirthday extends CalenderDayEvent with CalenderDayBirthdayMappable {
  CalenderDayBirthday({required super.type, required this.name, required this.conversation});

  final String name;
  final String conversation;
}
