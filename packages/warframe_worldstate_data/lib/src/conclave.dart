import 'package:warframe_worldstate_data/src/i18n/worldstate_langs.g.dart';
import 'package:warframe_worldstate_data/src/tools.dart';

/// Conclave string data in the given [locale]
ConclaveData conclave([String locale = 'en']) {
  final data = i18n(locale).conclaveData;

  return ConclaveData(data.modes, data.challenges, data.categories, data.affectors);
}

/// {@template conclave_data}
/// Holds Conclave translation data with helper functions
/// {@endtemplate}
class ConclaveData {
  /// {@macro conclave_data}
  ConclaveData(this._modes, this._challenges, this._categories, this._affectors);

  final Map<String, ConclaveMode> _modes;
  final Map<String, ConclaveChallenge> _challenges;
  final Map<String, ConclaveCategory> _categories;
  final Map<String, ConclaveAffector> _affectors;

  /// Get mode string if it exist
  ///
  /// Will return a human readable version of the resource if none is found
  String getModeString(String resource) => _modes[resource]?.value ?? normalizeResourceName(resource);

  /// Get category String if it exist
  ///
  /// Will return a human readable version of the resource if none is found
  String getCategoryString(String resource) =>
      _categories[resource]?.description ?? '[PH] ${normalizeResourceName(resource)}';

  /// Get challenge data if one exist
  ///
  /// Will return a human readable version of the resource and placeholder description if none is found
  ({String title, String description, int standing}) getChallenge(String resource) {
    final challenge = _challenges[resource];

    return (
      title: challenge?.title ?? normalizeResourceName(resource),
      description: challenge?.description ?? '[PH] ${normalizeResourceName(resource)} Desc',
      standing: challenge?.standing != null ? int.parse(challenge!.standing) : 0,
    );
  }

  /// Get challenge data if one exist, otherwise values in the Record will be filled with placeholders.
  ///
  /// Will return a human readable version of the resource and placeholder description if none is found
  ({String title, String description}) getAffector(String resource) {
    final affector = _affectors[resource];

    return (
      title: affector?.title ?? normalizeResourceName(resource),
      description: affector?.description ?? normalizeResourceName(resource),
    );
  }
}
