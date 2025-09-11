import 'dart:typed_data';

import 'package:zstandard_macos/zstandard_macos.dart';

extension ZstandardExt on Uint8List? {
  Uint8List? compress({int compressionLevel = 3}) {
    var data = this;
    if (data == null) return null;
    return ZstandardMacOS().compress(data, compressionLevel);
  }

  Uint8List? decompress() {
    var data = this;
    if (data == null) return null;
    return ZstandardMacOS().decompress(data);
  }
}
