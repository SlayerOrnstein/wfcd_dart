import 'dart:io';

import 'package:cache/hive/hive_adapters.dart';
import 'package:cache/hive/hive_registrar.g.dart';
import 'package:cache/src/cache.dart';
import 'package:hive_ce/hive.dart';

class CacheManager {
  static late Box<Cache> _cache;

  static Future<CacheManager> open() async {
    final temp = Directory.systemTemp;
    Hive.init(temp.path);
    if (!Hive.isAdapterRegistered(CacheAdapter().typeId)) {
      Hive.registerAdapters();
    }

    _cache = await Hive.openBox<Cache>('worldstate_status');
    return CacheManager();
  }

  Future<void> store(String key, String value) async {
    await _cache.put(key, Cache(timestamp: DateTime.timestamp(), data: value));
  }

  Future<String?> read(String key, Duration ttl) async {
    final temp = _cache.get(key);
    if (temp == null || DateTime.timestamp().difference(temp.timestamp) > ttl) {
      return null;
    }

    return temp.data;
  }
}
