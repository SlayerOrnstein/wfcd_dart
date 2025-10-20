import 'package:dart_mappable/dart_mappable.dart';

part 'construction_progress.mapper.dart';

@MappableClass()
class ConstructionProgress with ConstructionProgressMappable {
  ConstructionProgress({
    required this.fomorianProgress,
    required this.razorbackProgress,
    required this.unknownProgress,
  });

  factory ConstructionProgress.fromRaw(List<num> raw) {
    return ConstructionProgress(fomorianProgress: raw[0], razorbackProgress: raw[1], unknownProgress: raw[2]);
  }

  final num fomorianProgress;
  final num razorbackProgress;
  final num unknownProgress;
}
