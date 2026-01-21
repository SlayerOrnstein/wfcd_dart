import 'dart:convert';

import 'package:crypto/crypto.dart';

String hash(String str) {
  return sha256.convert(utf8.encode(str)).toString().substring(0, 10);
}
