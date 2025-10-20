import 'package:hive_ce/hive.dart';

class Cache extends HiveObject {
  Cache({required this.timestamp, required this.data});

  final DateTime timestamp;
  final String data;
}
