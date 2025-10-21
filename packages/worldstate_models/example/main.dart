import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:worldstate_models/src/utils/utils.dart';
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final rawSyndicateMissions = List<JsonObject>.from(json['SyndicateMissions'] as List<dynamic>);
  final cetusbounty = rawSyndicateMissions.firstWhere((s) => s['Tag'] == 'CetusSyndicate');
  final object = await RawSyndicate.fromMap(cetusbounty).toSyndicate();

  await File('./syndicate.json').writeAsString(JsonEncoder.withIndent('   ').convert(object.toMap()));
}
