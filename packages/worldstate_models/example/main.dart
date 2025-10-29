// ignore_for_file: avoid_print example file

import 'package:http/http.dart' as http;
import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));

  // you can  also use parseBountyRewardTables if you just want to use the table and nothing else
  final data = await buildDropData();
  final deps = Dependency(data.bountyRewardTables);
  final worldstate = RawWorldstate.fromJson(response.body).toWorldstate(deps);

  print(worldstate.timestamp);
}
