// Not required for test files
import 'dart:convert';
import 'dart:io';

import 'package:profile_models/profile_models.dart';
import 'package:test/test.dart';

void main() {
  final data = jsonDecode(File('./test/profile.json').readAsStringSync()) as Map<String, dynamic>;
  final profile = (data['Results'] as List<dynamic>).first as Map<String, dynamic>;

  group('ProfileModels', () {
    test('raw can be instantiated', () {
      expect(RawProfile.fromMap(profile), isNotNull);
    });

    test('can be sanitised', () {
      expect(RawProfile.fromMap(profile).toProfile(), isNotNull);
    });

    test('can be converted to and from map', () {
      final data = RawProfile.fromMap(profile).toProfile().toMap();
      expect(Profile.fromMap(data), isNotNull);
    });
  });
}
