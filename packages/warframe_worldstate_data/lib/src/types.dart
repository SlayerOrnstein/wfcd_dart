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
