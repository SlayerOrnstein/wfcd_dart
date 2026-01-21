// ignore_for_file:  This is only an example

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:warframe_items/warframe_items.dart';

Future<void> main() async {
  const encoder = JsonEncoder.withIndent('    ');
  final data = Directory(Platform.script.resolve('../').resolve('data').toFilePath())..createSync(recursive: true);

  final items = WarframeItems();
  final export = await items.buildWeeklyRewards();

  File(
      '${data.path}/json/sortieRewards.json',
    )
    ..createSync(recursive: true)
    ..writeAsStringSync(encoder.convert(export));
}
