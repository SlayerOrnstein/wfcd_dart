import 'package:http/http.dart' as http;
import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));
  final data = await buildDropData();
  final worldstate = await RawWorldstate.fromJson(response.body).toWorldstate(data);

  // print(worldstate.timestamp);
  // print(worldstate.toJson());

  final cetus = worldstate.syndicateMissions.firstWhere((s) => s.name == 'Ostrons');

  for (final bounty in cetus.bounties!) {
    print('${bounty.type}: ${bounty.rewardPool.length}');
  }
}
