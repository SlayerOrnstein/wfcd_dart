import 'dart:convert';
import 'dart:isolate';

import 'package:cache/cache.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;
import 'package:worldstate_models/worldstate_models.dart';

const _api = 'https://api.warframe.com/cdn/worldState.php';
const ttl = Duration(seconds: Duration.secondsPerMinute * 2);

Future<Response> onRequest(RequestContext context) async {
  final cache = await context.read<Future<CacheManager>>();
  final key = context.request.uri.toString();
  final temp = await cache.read(key, ttl);

  if (temp != null) return Response.json(body: json.decode(temp));

  final response = await http.get(Uri.parse(_api));
  final raw = await Isolate.run(() => RawWorldstate.fromJson(response.body));
  final worldstate = await Isolate.run(() => Worldstate.fromRaw(raw, Config()));

  await cache.store(key, worldstate.toJson());

  return Response.json(body: worldstate.toMap());
}
