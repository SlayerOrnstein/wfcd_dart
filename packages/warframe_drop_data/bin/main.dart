import 'dart:convert';
import 'dart:io';

import 'package:warframe_drop_data/warframe_drop_data.dart';

Future<void> main() async {
  final data = await build();
  await writeJson(data.toMap());
}

Future<void> writeJson(Map<String, dynamic> data) async {
  const encoder = JsonEncoder.withIndent('    ');
  final dir = Directory('./data').path;

  for (final key in data.keys) {
    final output = File('$dir/$key.json');
    print('writing $key to ${output.path}');

    await output.writeAsString(encoder.convert(data[key]));
  }

  final all = File('$dir/all.json');
  print('writing all drop data to ${all.path}');
  await all.writeAsString(encoder.convert(data.values.toList()));
}
