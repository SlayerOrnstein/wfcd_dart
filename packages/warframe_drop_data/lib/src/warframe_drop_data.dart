import 'dart:async';
import 'dart:isolate';

import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:warframe_drop_data/src/models/drop_data.dart';
import 'package:warframe_drop_data/src/parsers/parsers.dart';

const _dropData =
    'https://warframe-web-assets.nyc3.cdn.digitaloceanspaces.com/uploads/cms/hnfvc0o3jnfvc873njb03enrf56.html';

/// Fetches the official drop data site
Future<Element> fetchWarframeDropData([Client? client]) async {
  final res = await (client ?? Client()).get(Uri.parse(_dropData));
  return parse(res.body).body!;
}

/// Parses the official drop table into [DropData]
Future<DropData> buildDropData([Client? client]) async {
  final body = await fetchWarframeDropData(client);

  return Isolate.run(() {
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
