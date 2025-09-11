import 'dart:typed_data';

import 'package:zstandard_linux/zstandard_linux.dart';

extension ZstandardExt on Uint8List? {
  Uint8List? compress({int compressionLevel = 3}) {
    var data = this;
    if (data == null) return null;
    return ZstandardLinux().compress(data, compressionLevel);
  }

  Uint8List? decompress() {
    var data = this;
    if (data == null) return null;
    return ZstandardLinux().decompress(data);
  }
}
