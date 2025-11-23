import 'package:collection/collection.dart';

/// Calendar event types
enum CalendarEvents {
  /// Calenda to do
  challenge('CET_CHALLENGE', 'To Do'),

  /// Calendar override
  upgrade('CET_UPGRADE', 'Override'),

  /// Calendar prize
  reward('CET_REWARD', 'Big Prize!'),

  /// Calendar birthday
  plot('CET_PLOT', 'Birthday');

  const CalendarEvents(this.uniqueName, this.translation);

  /// Unique name
  final String uniqueName;

  /// in-game text
  final String translation;

  /// Translate a calendar event to in-game name
  static CalendarEvents fromString(String uniqueName) {
    return CalendarEvents.values.firstWhereOrNull((v) => v.uniqueName == uniqueName) ?? CalendarEvents.plot;
  }
}
