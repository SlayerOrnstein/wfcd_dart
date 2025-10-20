import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));

  final stopwatch = Stopwatch()..start();
  final worldstate = await Worldstate.fromRaw(RawWorldstate.fromJson(response.body));
  stopwatch.stop();
  print(stopwatch.elapsed);

  File('./worldstate.json').writeAsStringSync(const JsonEncoder.withIndent('    ').convert(worldstate.toMap()));
}
