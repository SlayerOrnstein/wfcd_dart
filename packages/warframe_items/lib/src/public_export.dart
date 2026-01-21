import 'dart:convert';
import 'dart:isolate';

import 'package:http/http.dart';
import 'package:lzma/lzma.dart';
import 'package:warframe_items/src/constants.dart';
import 'package:warframe_items/src/enums.dart';

class ManifestEntry {
  ManifestEntry({required this.filename, required this.hash});

  factory ManifestEntry.parse(String line) {
    final parts = line.trim().split('!');
    return ManifestEntry(filename: parts[0], hash: parts[1]);
  }

  final String filename;
  final String hash;

  Uri get url => Uri.parse('${PublicExportEndpoints.content}/Manifest/$filename!$hash');
  String get exportType => filename.split('_').first.split('.').first;
}

class PublicExport {
  PublicExport([Client? client]) : _client = client ?? Client();

  final Client _client;
  final _newLineRegEx = RegExp('\r?\n');

  Future<List<ManifestEntry>> fetchIndex(Languages locale) async {
    final res = await _client.get(Uri.parse('${PublicExportEndpoints.origin}/index_${locale.name}.txt.lzma'));
    final index = utf8.decode(lzma.decode(res.bodyBytes));

    return index.split(_newLineRegEx).map(ManifestEntry.parse).toList();
  }

  Future<Map<String, dynamic>> fetchManifest(ManifestEntry entry) async {
    final res = await _client.get(entry.url);
    final sanitized = utf8.decode(res.bodyBytes).replaceAll(_newLineRegEx, '');

    return Isolate.run(() => jsonDecode(sanitized) as Map<String, dynamic>);
  }
}
