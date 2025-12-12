import 'package:warframe_worldstate_data/src/i18n/conclave_data.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// A challenge
typedef ConclaveChallenge = ({String title, String description, int standing});

/// An affector
typedef ConclaveAffector = ({String title, String description});

/// Get mode string if it exist
///
/// Will return a human readable version of the resource if none is found
String getModeString(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) =>
    (conclave(locale)['modes'] as Map<String, String>)[resource] ?? normalizeResourceName(resource);

/// Get category String if it exist
///
/// Will return a human readable version of the resource if none is found
String getCategoryString(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  final categories = conclave(locale)['categories'] as Map<String, dynamic>;
  final res = categories[resource] as Map<String, dynamic>;

  return res['description'] as String? ?? '[PH] ${normalizeResourceName(resource)}';
}

/// Get challenge data if one exist
///
/// Will return a human readable version of the resource and placeholder description if none is found
ConclaveChallenge getChallenge(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  final challenge = conclave(locale)['challenges'] as Map<String, dynamic>?;
  final res = challenge?[resource] as Map<String, dynamic>?;
  if (res == null) {
    final normalized = normalizeResourceName(resource);
    return (title: normalized, description: '[PH] $normalized Desc', standing: 0);
  }

  return (title: res['title'] as String, description: res['description'] as String, standing: res['standing'] as int);
}

/// Get challenge data if one exist, otherwise values in the Record will be filled with placeholders.
///
/// Will return a human readable version of the resource and placeholder description if none is found
ConclaveAffector getAffector(String resource, [WorldstateDataLocale locale = WorldstateDataLocale.en]) {
  final affectors = conclave(locale)['affectors'] as Map<String, dynamic>;
  final res = affectors[resource] as Map<String, dynamic>?;
  if (res == null) {
    final normalized = normalizeResourceName(resource);
    return (title: normalized, description: '[PH] $normalized Desc');
  }

  return (title: res['title'] as String, description: res['description'] as String);
}
