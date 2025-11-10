import 'package:dart_mappable/dart_mappable.dart';

part 'color_map.mapper.dart';

@MappableRecord()
typedef RawColorMap = ({int t0, int t1, int t2, int t3, int m0, int m1, int en, int e1});

@MappableRecord()
typedef ColorMap = ({int primary, int secondary, int tertiary, int accents, List<int> emissive, List<int> energy});

extension RawColorMapExtension on RawColorMap {
  int _toHex(int code) => int.parse('0x${code.toUnsigned(32).toRadixString(16).padLeft(8, '0').toUpperCase()}');

  ColorMap toColorMap() {
    return (
      primary: _toHex(t0),
      secondary: _toHex(t1),
      tertiary: _toHex(t2),
      accents: _toHex(t3),
      emissive: [m0, m1].map(_toHex).toList(),
      energy: [en, e1].map(_toHex).toList(),
    );
  }
}
