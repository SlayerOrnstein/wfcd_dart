import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Drop chance Record
typedef DropChance = ({String rarity, double chance, String? status});

/// Location that was parssed out
typedef ParsedLocation = ({String planet, String node, String gameMode, bool isEvent});

/// Creates an SHA256 hash
String hash(String input) => sha256.convert(utf8.encode(input)).toString();

/// Parse out the item drop chance
double? parseChance(String input) {
  final regex = RegExp('([0-9]{1,3}.[0-9]{2})');
  final match = regex.firstMatch(input);
  if (match == null || match.groupCount == 0) return null;

  return double.parse(match.group(1)!);
}

/// Parse out drop chance with rarity.
///
/// Some items are under review, this will show up under [DropChance?.status]
DropChance? parseChanceWithRarity(String input) {
  final regex = RegExp(r'(?<rarity>[A-z]*)\s(\((?<status>[A-z]*\s[A-z]*)\)\s)?\((?<chance>[0-9]{1,3}.[0-9]{2})%\)');
  final matches = regex.allMatches(input).firstOrNull;
  if (matches == null || matches.groupCount == 0) return null;

  return (
    rarity: matches.namedGroup('rarity')!,
    chance: double.parse(matches.namedGroup('chance')!),
    status: matches.namedGroup('status'),
  );
}

/// Utility to help parse out DE's ABC reward rotation
String? parseRotation(String input) {
  final rotationRegex = RegExp(r'Rotation\s([A-D])');
  final matches = rotationRegex.allMatches(input);
  if (matches.isEmpty || matches.first.groupCount != 1) return null;

  return matches.first.group(1);
}

/// Parses out location, event type and mission type
ParsedLocation? parseLocation(String input) {
  if (!input.contains('/')) return null;

  final parts = input.split('/');
  final planet = parts.first.replaceAll('Event:', '').trim();
  final locationCleaned = parts[1].replaceAll('(Variant)', '').replaceAll(RegExp(r'Extra$'), '').trim();

  final locationAndModeParts = locationCleaned.split('(');

  var location = locationAndModeParts[0].trim();
  if (locationAndModeParts.length == 3) {
    location = '${locationAndModeParts[0].trim()} (${locationAndModeParts[1].trim()})';
  }

  final gameMode = locationAndModeParts[locationAndModeParts.length - 1].replaceAll(')', '').trim();

  if (input.contains('(Variant)')) {
    location = 'Variant ($location)';
  }

  if (input.endsWith('Extra')) {
    location = '$location (Extra)';
  }

  if (input.endsWith('(Caches)')) {
    location = '$location (Caches)';
  }

  return (planet: planet, node: location, gameMode: gameMode, isEvent: input.contains('Event:'));
}
