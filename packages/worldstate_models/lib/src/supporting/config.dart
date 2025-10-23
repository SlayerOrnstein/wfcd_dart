import 'package:http/http.dart';

class Config {
  Config([this.locale = 'en', Client? client]) : client = client ?? Client();

  final String locale;
  final Client client;
}
