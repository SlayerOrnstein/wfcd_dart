// Not required for test files
// ignore_for_file: prefer_const_constructors
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
  });
}
