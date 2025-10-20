import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:lzma/lzma.dart';
import 'package:warframe_items/src/utils/json_utils.dart';
import 'package:warframe_items/warframe_items.dart';

typedef ExportManifest = ({ExportCategory category, String hash, List<Map<String, dynamic>> manifest});

class PublicExport {
  PublicExport([this.locale = 'en', http.Client? client]) : _client = client ?? http.Client();

  final String locale;

  final http.Client _client;

  static const _origin = 'https://origin.warframe.com/PublicExport';
  static const _content = 'https://content.warframe.com/PublicExport';
  static final newLineRegEx = RegExp('\r?\n');

  Future<List<String>> fetchIndex() async {
    final res = await _client.get(Uri.parse('$_origin/index_$locale.txt.lzma'));
    final index = utf8.decode(lzma.decode(res.bodyBytes));

    return index.split(newLineRegEx);
  }

  Future<List<Texture>> fetchManifest() async {
    final endpoint = (await fetchIndex()).firstWhere((s) => s.contains('ExportManifest'));

    final res = await _client.get(Uri.parse('$_content/Manifest/$endpoint'));
    final json = jsonDecode(res.body.replaceAll(newLineRegEx, '')) as Map<String, dynamic>;

    return (json['Manifest'] as List<dynamic>).toMapList().map(Texture.fromMap).toList();
  }

  Future<ExportManifest> fetchExport(String export) async {
    final res = await _client.get(Uri.parse('$_content/Manifest/$export'));
    final json = jsonDecode(res.body.replaceAll(newLineRegEx, '')) as Map<String, dynamic>;
    final category = ExportCategory.fromExportString(export);
    final key = 'Export${toBeginningOfSentenceCase(category.name)}';
    final data = (json[key] as List<dynamic>).toMapList();

    return (category: category, hash: export.split('!').last, manifest: data);
  }

  Future<List<ExportManifest>> fetchAllExports() async {
    final index = await fetchIndex();
    final exports = <ExportManifest>[];

    for (final export in index.where((i) => !i.contains('ExportManifest'))) {
      exports.add(await fetchExport(export));
    }

    return exports;
  }
}
