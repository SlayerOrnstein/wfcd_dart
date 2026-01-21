import 'package:logging/logging.dart';

class ItemContext {
  ItemContext({required this.category, required this.item, required this.textures, Logger? logger})
    : logger = logger ?? Logger('');

  final String category;
  final Map<String, dynamic> item;
  final List<Map<String, dynamic>> textures;
  final Logger logger;

  ItemContext copyWith({
    String? category,
    Map<String, dynamic>? item,
    List<Map<String, dynamic>>? textures,
    Logger? logger,
  }) {
    return ItemContext(
      category: category ?? this.category,
      item: item ?? this.item,
      textures: textures ?? this.textures,
      logger: logger ?? this.logger,
    );
  }
}
