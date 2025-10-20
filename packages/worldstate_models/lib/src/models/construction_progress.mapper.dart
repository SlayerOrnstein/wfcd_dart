// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'construction_progress.dart';

class ConstructionProgressMapper extends ClassMapperBase<ConstructionProgress> {
  ConstructionProgressMapper._();

  static ConstructionProgressMapper? _instance;
  static ConstructionProgressMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConstructionProgressMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ConstructionProgress';

  static num _$fomorianProgress(ConstructionProgress v) => v.fomorianProgress;
  static const Field<ConstructionProgress, num> _f$fomorianProgress = Field(
    'fomorianProgress',
    _$fomorianProgress,
  );
  static num _$razorbackProgress(ConstructionProgress v) => v.razorbackProgress;
  static const Field<ConstructionProgress, num> _f$razorbackProgress = Field(
    'razorbackProgress',
    _$razorbackProgress,
  );
  static num _$unknownProgress(ConstructionProgress v) => v.unknownProgress;
  static const Field<ConstructionProgress, num> _f$unknownProgress = Field(
    'unknownProgress',
    _$unknownProgress,
  );

  @override
  final MappableFields<ConstructionProgress> fields = const {
    #fomorianProgress: _f$fomorianProgress,
    #razorbackProgress: _f$razorbackProgress,
    #unknownProgress: _f$unknownProgress,
  };
  @override
  final bool ignoreNull = true;

  static ConstructionProgress _instantiate(DecodingData data) {
    return ConstructionProgress(
      fomorianProgress: data.dec(_f$fomorianProgress),
      razorbackProgress: data.dec(_f$razorbackProgress),
      unknownProgress: data.dec(_f$unknownProgress),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ConstructionProgress fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConstructionProgress>(map);
  }

  static ConstructionProgress fromJson(String json) {
    return ensureInitialized().decodeJson<ConstructionProgress>(json);
  }
}

mixin ConstructionProgressMappable {
  String toJson() {
    return ConstructionProgressMapper.ensureInitialized()
        .encodeJson<ConstructionProgress>(this as ConstructionProgress);
  }

  Map<String, dynamic> toMap() {
    return ConstructionProgressMapper.ensureInitialized()
        .encodeMap<ConstructionProgress>(this as ConstructionProgress);
  }

  ConstructionProgressCopyWith<
    ConstructionProgress,
    ConstructionProgress,
    ConstructionProgress
  >
  get copyWith =>
      _ConstructionProgressCopyWithImpl<
        ConstructionProgress,
        ConstructionProgress
      >(this as ConstructionProgress, $identity, $identity);
  @override
  String toString() {
    return ConstructionProgressMapper.ensureInitialized().stringifyValue(
      this as ConstructionProgress,
    );
  }

  @override
  bool operator ==(Object other) {
    return ConstructionProgressMapper.ensureInitialized().equalsValue(
      this as ConstructionProgress,
      other,
    );
  }

  @override
  int get hashCode {
    return ConstructionProgressMapper.ensureInitialized().hashValue(
      this as ConstructionProgress,
    );
  }
}

extension ConstructionProgressValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConstructionProgress, $Out> {
  ConstructionProgressCopyWith<$R, ConstructionProgress, $Out>
  get $asConstructionProgress => $base.as(
    (v, t, t2) => _ConstructionProgressCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ConstructionProgressCopyWith<
  $R,
  $In extends ConstructionProgress,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    num? fomorianProgress,
    num? razorbackProgress,
    num? unknownProgress,
  });
  ConstructionProgressCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ConstructionProgressCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConstructionProgress, $Out>
    implements ConstructionProgressCopyWith<$R, ConstructionProgress, $Out> {
  _ConstructionProgressCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConstructionProgress> $mapper =
      ConstructionProgressMapper.ensureInitialized();
  @override
  $R call({
    num? fomorianProgress,
    num? razorbackProgress,
    num? unknownProgress,
  }) => $apply(
    FieldCopyWithData({
      if (fomorianProgress != null) #fomorianProgress: fomorianProgress,
      if (razorbackProgress != null) #razorbackProgress: razorbackProgress,
      if (unknownProgress != null) #unknownProgress: unknownProgress,
    }),
  );
  @override
  ConstructionProgress $make(CopyWithData data) => ConstructionProgress(
    fomorianProgress: data.get(#fomorianProgress, or: $value.fomorianProgress),
    razorbackProgress: data.get(
      #razorbackProgress,
      or: $value.razorbackProgress,
    ),
    unknownProgress: data.get(#unknownProgress, or: $value.unknownProgress),
  );

  @override
  ConstructionProgressCopyWith<$R2, ConstructionProgress, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ConstructionProgressCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

