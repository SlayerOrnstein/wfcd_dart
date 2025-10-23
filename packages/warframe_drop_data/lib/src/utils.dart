import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Drop chance Record
typedef DropChance = ({String rarity, double chance});

/// Creates an SHA256 hash
String hash(String input) => sha256.convert(utf8.encode(input)).toString();

/// Parse out drop chance
DropChance? parseChance(String input) {
  final regex = RegExp(r'([A-z]*)\s\((.*)%\)');
  final matches = regex.allMatches(input).first;
  if (matches.groupCount != 2) return null;

  return (rarity: matches.group(1)!, chance: double.parse(matches.group(2)!));
}

String? parseRotation(String input) {
  final rotationRegex = RegExp(r'Rotation\s([A-D])');
  final matches = rotationRegex.allMatches(input);
  if (matches.isEmpty || matches.first.groupCount != 1) return null;

  return matches.first.group(1);
}
