import 'dart:typed_data';

import 'package:zstandard/zstandard.dart';

extension ZstandardExt on Uint8List? {
  Uint8List? compress({int compressionLevel = 3}) {
    var data = this;
    if (data == null) return null;
    return Zstandard().compress(data, compressionLevel);
  }

  Uint8List? decompress() {
    var data = this;
    if (data == null) return null;
    return Zstandard().decompress(data);
  }
}
