// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class CacheAdapter extends TypeAdapter<Cache> {
  @override
  final typeId = 0;

  @override
  Cache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cache(timestamp: fields[0] as DateTime, data: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, Cache obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CacheAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
