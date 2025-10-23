import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:collection/collection.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:warframe_drop_data/src/models/bounty_reward.dart';
import 'package:warframe_drop_data/src/models/drop_data.dart';
import 'package:warframe_drop_data/src/parsers/blueprint_locations.dart';
import 'package:warframe_drop_data/src/parsers/bounty_rewards.dart';

/// {@template warframe_drop_data}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class WarframeDropData {
  /// {@macro warframe_drop_data}
  const WarframeDropData();
}

const _dropData =
    'https://warframe-web-assets.nyc3.cdn.digitaloceanspaces.com/uploads/cms/hnfvc0o3jnfvc873njb03enrf56.html';

Future<List<S>> _parseArray<T, S>(List<T> array, FutureOr<S> Function(T) transformer) async {
  final length = array.length ~/ (Platform.numberOfProcessors ~/ 2);
  final slices = array.slices(length);
  final mapped = await Future.wait(
    slices.map((s) async => Isolate.run(() => Future.wait(s.map((s) async => transformer(s))))),
  );

  return mapped.flattenedToList;
}

/// Parses the official drop table into [DropData]
Future<DropData> buildDropData([Client? client]) async {
  final res = await (client ?? Client()).get(Uri.parse(_dropData));
  final webpage = await Isolate.run(() => parse(res.body));
  final body = webpage.body;
  if (body == null) throw Exception('failed to parse body');

  final bountyRewards = await _parseArray<BountyRewardIds, List<BountyRewardTable>?>(
    BountyRewardIds.values,
    (b) => parseBountyRewards(body, b.id),
  );

  return DropData(
    blueprintLocations: parseBlueprintLocations(body),
    bountyRewardTables: bountyRewards.nonNulls.reduce((p, n) => [...p, ...n]),
  );
}
