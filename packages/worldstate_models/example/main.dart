import 'package:http/http.dart' as http;
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));
  final raw = RawWorldstate.fromJson(response.body);

  print(await raw.toWorldstate());
}
