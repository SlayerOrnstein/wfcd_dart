import 'dart:convert';
import 'dart:io';

import 'package:warframe_drop_data/warframe_drop_data.dart';

Future<void> main() async {
  final jsonEncode = const JsonEncoder.withIndent('   ').convert;
  final data = (await buildDropData()).toMap();

  for (final key in data.keys) {
    File('./build/$key.json')
      ..createSync(recursive: true)
      ..writeAsStringSync(jsonEncode(data[key]));
  }
}
