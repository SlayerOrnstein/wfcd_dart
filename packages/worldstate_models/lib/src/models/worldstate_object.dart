import 'package:dart_mappable/dart_mappable.dart';
import 'package:worldstate_models/src/utils/utils.dart';

abstract class BaseContentObject {
  BaseContentObject({required this.id, this.activation, this.expiry});

  @MappableField(key: '_id')
  final JsonObject id;

  @MappableField(key: 'Activation')
  final JsonObject? activation;

  @MappableField(key: 'Expiry')
  final JsonObject? expiry;
}

abstract class WorldstateObject {
  WorldstateObject({required this.id, this.activation, this.expiry});

  /// DE provided unique ID
  final String id;

  /// Timestamp of when this object started.
  final DateTime? activation;

  /// Timestamp of when this object will expire.
  final DateTime? expiry;

  String? get eta {
    if (expiry == null) return null;
    return createEta(expiry);
  }

  bool? get isActive {
    if (activation == null && expiry == null) return null;

    final now = DateTime.timestamp();
    if (activation != null && expiry == null) return now.isAfter(activation!);
    if (activation == null && expiry != null) return now.isBefore(expiry!);

    return now.isAfter(activation!) && now.isBefore(expiry!);
  }
}
