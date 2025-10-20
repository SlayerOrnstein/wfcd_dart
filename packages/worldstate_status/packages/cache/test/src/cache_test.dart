// Not required for test files
// ignore_for_file: prefer_const_constructors
import 'package:cache/cache.dart';
import 'package:test/test.dart';

void main() {
  group('Cache', () {
    test('can be instantiated', () {
      expect(Cache(timestamp: DateTime.timestamp(), data: ''), isNotNull);
    });
  });
}
