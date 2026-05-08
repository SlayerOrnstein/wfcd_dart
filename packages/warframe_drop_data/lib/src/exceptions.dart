/// {@template parsing_exception}
/// Thrown where theres an error parsing the expected HTML input
/// {@endtemplate}
class ParsingException implements Exception {
  /// {@macro parsing_exception}
  ParsingException(this.message);

  /// Error message
  final String message;
}
