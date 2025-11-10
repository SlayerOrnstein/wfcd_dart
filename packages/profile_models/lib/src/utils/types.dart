typedef JsonObject = Map<String, dynamic>;

typedef JsonArray = List<JsonObject>;

DateTime parseDate(JsonObject? json) {
  if (json == null) return DateTime.timestamp();

  final date = json[r'$date'] as JsonObject;
  final numberLong = int.parse(date[r'$numberLong'] as String);

  return DateTime.fromMillisecondsSinceEpoch(numberLong);
}

String parseId(JsonObject json) {
  return json[r'$oid'] as String;
}
