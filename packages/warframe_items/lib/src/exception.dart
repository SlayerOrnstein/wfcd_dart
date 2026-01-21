class WarframeExportException implements Exception {
  WarframeExportException(this.message, [this.statusCode]);

  final String message;
  final int? statusCode;

  @override
  String toString() =>
      'WarframeExportException: $message'
      '${statusCode != null ? ' (HTTP $statusCode)' : ''}';
}
