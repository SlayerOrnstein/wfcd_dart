import 'package:http/http.dart' as http;
import 'package:warframe_drop_data/warframe_drop_data.dart';
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));
  final data = await buildDropData();
  final deps = Dependency(data);
  final worldstate = await RawWorldstate.fromJson(response.body).toWorldstate(deps);

  print(worldstate.timestamp);
}
