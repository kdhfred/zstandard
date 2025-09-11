import 'dart:typed_data';

import 'package:zstandard_windows/zstandard_windows.dart';

extension ZstandardExt on Uint8List? {
  Uint8List? compress({int compressionLevel = 3}) {
    var data = this;
    if (data == null) return null;
    return ZstandardWindows().compress(data, compressionLevel);
  }

  Uint8List? decompress() {
    var data = this;
    if (data == null) return null;
    return ZstandardWindows().decompress(data);
  }
}
