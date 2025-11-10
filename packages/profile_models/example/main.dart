// ignore_for_file: avoid_print This is an example

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:profile_models/profile_models.dart';

Future<void> main() async {
  final response = await http.get(
    Uri.parse('https://api.warframe.com/cdn/getProfileViewingData.php?playerId={accountId}'),
  );

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final profile = RawProfile.fromMap((json['Results'] as List<dynamic>).first as Map<String, dynamic>).toProfile();

  print(profile.username);
}
