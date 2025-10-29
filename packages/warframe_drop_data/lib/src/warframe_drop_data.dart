import 'dart:async';
import 'dart:isolate';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:warframe_drop_data/src/models/drop_data.dart';
import 'package:warframe_drop_data/src/parsers/parsers.dart';

/// {@template warframe_drop_data}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class WarframeDropData {
  /// {@macro warframe_drop_data}
  const WarframeDropData();
}

const _dropData =
    'https://warframe-web-assets.nyc3.cdn.digitaloceanspaces.com/uploads/cms/hnfvc0o3jnfvc873njb03enrf56.html';

/// Parses the official drop table into [DropData]
Future<DropData> buildDropData([Client? client]) async {
  final res = await (client ?? Client()).get(Uri.parse(_dropData));

  return Isolate.run(() {
    final body = parse(res.body).body;
    if (body == null) throw Exception('failed to parse body');

    return DropData(
      blueprintDrops: parseBlueprintLocations(body),
      bountyRewardTables: Syndicates.values
          .map((b) => parseBountyRewardTables(body, b))
          .nonNulls
          .reduce((p, n) => [...p, ...n]),
      resourcesByAvatar: parseAvatarDropTables(body, Avatars.resources) ?? [],
      sigilsByAvatar: parseAvatarDropTables(body, Avatars.sigils) ?? [],
      additionalItemsByAvatar: parseAvatarDropTables(body, Avatars.items) ?? [],
    );
  });
}
