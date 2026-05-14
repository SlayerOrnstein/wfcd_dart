import 'dart:convert';
import 'dart:io';

import 'package:html/parser.dart';
import 'package:http/http.dart';
// ignore: depend_on_referenced_packages Only a example/test so doesn't matter
import 'package:path/path.dart';
import 'package:warframe_drop_data/warframe_drop_data.dart';

Future<void> main() async {
  final jsonEncode = const JsonEncoder.withIndent('   ').convert;

  final res = await get(Uri.parse(warframeDropDataPage));
  final html = res.bodyBytes;
  final document = parse(html, encoding: 'utf-8').body;
  if (document == null) throw Exception('Failed to get page');

  final drops = buildDropData(document).toMap();
  final dir = Directory(join('packages', 'warframe_drop_data'));
  for (final key in drops.keys) {
    File(join(dir.absolute.path, 'build', '$key.json'))
      ..createSync(recursive: true)
      ..writeAsStringSync(jsonEncode(drops[key]));
  }
}
