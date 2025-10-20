/// Fissure tier and position
typedef FissureModifier = ({String name, int tier});

/// Steel path store item
typedef SteelPathItem = ({String name, int cost});

/// Steel path lang data
typedef SteelPathData = ({List<SteelPathItem> rotation, List<SteelPathItem> evergreen});

/// Synth target location
typedef SynthTargetLocation = ({
  String lastVerified,
  String level,
  String faction,
  String spawnRate,
  String mission,
  String planet,
  String type,
});

/// Synth target
typedef SynthTarget = ({String name, String imageKey, List<SynthTargetLocation> locations});

/// Sorie boss and faction
typedef SortieFaction = ({String boss, String faction});

/// Sortie Modifier
typedef SortieModifier = ({String type, String description});
