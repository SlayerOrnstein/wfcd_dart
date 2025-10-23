import 'dart:convert';
import 'dart:io';

import 'package:warframe_drop_data/warframe_drop_data.dart';

Future<void> main() async {
  final jsonEncode = const JsonEncoder.withIndent('   ').convert;
  final dropRates = await build();

  File(
    './bounty_rewards.json',
  ).writeAsStringSync(jsonEncode(dropRates.bountyRewardTables.map((d) => d.toMap()).toList()));
}
