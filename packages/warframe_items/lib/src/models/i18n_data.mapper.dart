// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'i18n_data.dart';

class I18nDataMapper extends ClassMapperBase<I18nData> {
  I18nDataMapper._();

  static I18nDataMapper? _instance;
  static I18nDataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = I18nDataMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'I18nData';

  static String _$name(I18nData v) => v.name;
  static const Field<I18nData, String> _f$name = Field('name', _$name);
  static String? _$description(I18nData v) => v.description;
  static const Field<I18nData, String> _f$description = Field(
    'description',
    _$description,
    opt: true,
  );

  @override
  final MappableFields<I18nData> fields = const {
    #name: _f$name,
    #description: _f$description,
  };

  static I18nData _instantiate(DecodingData data) {
    return I18nData(
      name: data.dec(_f$name),
      description: data.dec(_f$description),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static I18nData fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<I18nData>(map);
  }

  static I18nData fromJson(String json) {
    return ensureInitialized().decodeJson<I18nData>(json);
  }
}

mixin I18nDataMappable {
  String toJson() {
    return I18nDataMapper.ensureInitialized().encodeJson<I18nData>(
      this as I18nData,
    );
  }

  Map<String, dynamic> toMap() {
    return I18nDataMapper.ensureInitialized().encodeMap<I18nData>(
      this as I18nData,
    );
  }

  I18nDataCopyWith<I18nData, I18nData, I18nData> get copyWith =>
      _I18nDataCopyWithImpl<I18nData, I18nData>(
        this as I18nData,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return I18nDataMapper.ensureInitialized().stringifyValue(this as I18nData);
  }

  @override
  bool operator ==(Object other) {
    return I18nDataMapper.ensureInitialized().equalsValue(
      this as I18nData,
      other,
    );
  }

  @override
  int get hashCode {
    return I18nDataMapper.ensureInitialized().hashValue(this as I18nData);
  }
}

extension I18nDataValueCopy<$R, $Out> on ObjectCopyWith<$R, I18nData, $Out> {
  I18nDataCopyWith<$R, I18nData, $Out> get $asI18nData =>
      $base.as((v, t, t2) => _I18nDataCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class I18nDataCopyWith<$R, $In extends I18nData, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, String? description});
  I18nDataCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _I18nDataCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, I18nData, $Out>
    implements I18nDataCopyWith<$R, I18nData, $Out> {
  _I18nDataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<I18nData> $mapper =
      I18nDataMapper.ensureInitialized();
  @override
  $R call({String? name, Object? description = $none}) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (description != $none) #description: description,
    }),
  );
  @override
  I18nData $make(CopyWithData data) => I18nData(
    name: data.get(#name, or: $value.name),
    description: data.get(#description, or: $value.description),
  );

  @override
  I18nDataCopyWith<$R2, I18nData, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _I18nDataCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

