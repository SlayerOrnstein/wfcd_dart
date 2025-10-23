import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:worldstate_models/src/utils/types.dart';

String hash(String id) => md5.convert(utf8.encode(id)).toString();

DateTime parseDate(JsonObject? json) {
  if (json == null) return DateTime.timestamp();

  final date = json[r'$date'] as JsonObject;
  final numberLong = int.parse(date[r'$numberLong'] as String);

  return DateTime.fromMillisecondsSinceEpoch(numberLong);
}

String parseId(JsonObject json) {
  return json[r'$oid'] as String;
}

String? createEta(DateTime? date) {
  if (date == null) return null;

  final eta = date.difference(DateTime.timestamp()).abs();
  final days = eta.inDays;
  final hours = eta.inHours.remainder(24);
  final minutes = eta.inMinutes.remainder(60);
  final seconds = eta.inSeconds.remainder(60);

  final is24hrs = eta < const Duration(hours: Duration.hoursPerDay);

  return '${!is24hrs ? '${days}d ' : ''}${hours}h ${minutes.toString().padLeft(2, '0')}m ${seconds.toString().padLeft(2, '0')}s';
}

Future<List<S>> parseArray<T, S>(List<T> array, FutureOr<S> Function(T) transformer) async {
  final isLarge = array.length > 10;
  if (!isLarge) return Future.wait(array.map((s) async => transformer(s)));

  final length = array.length ~/ (Platform.numberOfProcessors ~/ 2);
  final slices = array.slices(length);
  final mapped = await Future.wait(
    slices.map((s) async => Isolate.run(() => Future.wait(s.map((s) async => transformer(s))))),
  );

  return mapped.flattenedToList;
}
