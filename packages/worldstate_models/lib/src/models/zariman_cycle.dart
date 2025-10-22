import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/models/worldstate_object.dart';
import 'package:worldstate_models/src/utils/utils.dart';

part 'zariman_cycle.mapper.dart';

@MappableEnum()
enum ZarimanState { corpus, grineer }

@MappableClass()
class ZarimanCycle extends WorldstateObject with ZarimanCycleMappable {
  ZarimanCycle({
    required super.id,
    required super.activation,
    required super.expiry,
    required this.isCorpus,
    required this.state,
  });

  factory ZarimanCycle.fromBountiesEndDate(DateTime bountiesEnd) {
    final cycle = calculateCurrentZarimanCycle(bountiesEnd);

    return ZarimanCycle(
      id: hash('ZarimanCycle${cycle.start}'),
      activation: cycle.start,
      expiry: cycle.expiry,
      isCorpus: cycle.isCorpus,
      state: cycle.state,
    );
  }

  final bool isCorpus;
  final ZarimanState state;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  @override
  bool get isActive => super.isActive!;
}
