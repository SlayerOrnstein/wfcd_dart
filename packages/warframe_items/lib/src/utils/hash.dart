import 'dart:convert';

import 'package:crypto/crypto.dart';

String hash(String str) {
  return sha256.convert(utf8.encode(str)).toString().substring(0, 10);
}

/// Generate an image name to aviod collision while also reducing image downloads with shared images
// String generateImagePath(Schema schema) {
//   final json = schema.uniqueName;
// }
