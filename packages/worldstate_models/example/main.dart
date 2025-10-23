// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:worldstate_models/worldstate_models.dart';

Future<void> main() async {
  final response = await http.get(Uri.parse('https://api.warframe.com/cdn/worldState.php'));
  final worldstate = await RawWorldstate.fromJson(response.body).toWorldstate(Config());

  print(worldstate.timestamp);
  print(worldstate.toJson());
}
