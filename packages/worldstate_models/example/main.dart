// example file
// ignore_for_file: avoid_print, unused_import

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final dropPage = await fetchWarframeDropData();
  final rewards = (
    bountyRewards: [
      Syndicates.ostron,
      Syndicates.solaris,
      Syndicates.entrati,
    ].map((b) => parseBountyRewardTables(dropPage, b)).nonNulls.reduce((p, n) => [...p, ...n]),
    missionRewards: parseMissionRewards(dropPage),
  );

  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));
  final map = json.decode(response.body) as Map<String, dynamic>;

  // you can  also use parseBountyRewardTables if you just want to use the table and nothing else
  // final data = await buildDropData();
  final deps = Dependency(rewardTables: rewards);
  final raw = RawWorldstate.fromMap(map);
  final worldstate = raw.toWorldstate(deps);

  print(worldstate.timestamp);
}
