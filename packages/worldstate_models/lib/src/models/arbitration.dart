import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/models.dart';
import 'package:worldstate_models/src/supporting/dependency.dart';

part 'arbitration.mapper.dart';

const arbitrationActiveTime = Duration(hours: 1, seconds: 60);

@MappableClass()
class Arbitration extends WorldstateObject with ArbitrationMappable {
  new({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.key,
    required this.node,
    required this.type,
  });

  factory fromMap(Map<String, dynamic> map) => ArbitrationMapper.fromMap(map);

  factory fromWF(Map<String, dynamic> line, Dependency deps) {
    final activation = DateTime.parse(line['activation'] as String);
    final expiry = DateTime.parse(line['expiry'] as String);
    final key = line['key'] as String;
    final node = deps.nodes.fetchNode(key);

    return Arbitration(
      id: md5.convert(utf8.encode(line.toString())).toString(),
      activation: activation,
      expiry: expiry,
      key: key,
      node: node.name,
      type: node.type,
    );
  }

  final String key;
  final String node;
  final String? type;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
