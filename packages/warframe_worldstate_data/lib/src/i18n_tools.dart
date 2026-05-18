import 'dart:convert';

/// Decodes the embedded json string
T decodeData<T>(List<int> data) {
  return utf8.decoder.fuse(json.decoder).convert(data) as T;
}

/// Decodes a json array enforcing [T]
List<T> decodeArrayData<T>(List<int> data) {
  return decodeData<List<dynamic>>(data).cast<T>();
}

/// Takes a json structured as
///
/// ```json
/// "key": {
///  "value": "some text here"
/// }
/// ```
///
/// and convertes it to a plain `Map<String, String>` for example the example above will become
///
/// ```json
/// "key": "some text here"
/// ```
///
/// The reason behind this is to reduce the size of the map for large data during runtime
Map<String, String> minifyValue(Map<String, dynamic> data) {
  return data.map((key, value) => MapEntry(key, (value as Map)['value'] as String));
}
