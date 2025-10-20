import 'package:cache/cache.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<Future<CacheManager>>((context) async => CacheManager.open()),
  );
}
