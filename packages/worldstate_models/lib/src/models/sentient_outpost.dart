import 'package:dart_mappable/dart_mappable.dart';
import 'package:warframe_worldstate_data/warframe_worldstate_data.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'sentient_outpost.mapper.dart';

@MappableClass()
class SentientOutpost extends WorldstateObject with SentientOutpostMappable {
  SentientOutpost({required super.id, required super.activation, required super.expiry, required this.node});

  factory SentientOutpost.fromSfn(String? sfn, [String locale = 'en']) {
    final node = sfn ?? '000';
    final cycle = calculateSentientOutpost();

    return SentientOutpost(
      id: hash('CrewBattleNode$node'),
      activation: cycle.activation,
      expiry: cycle.expiry,
      node: solNodes(locale).fetchNode(node),
    );
  }

  final Node node;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
