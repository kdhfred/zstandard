import 'dart:typed_data';

import 'package:zstandard_cli/src/zstandard_cli_base.dart';

extension ZstandardExt on Uint8List? {
  Uint8List? compress({int compressionLevel = 3}) {
    var data = this;
    if (data == null) return null;
    return ZstandardCLI().compress(data, compressionLevel: compressionLevel);
  }

  Uint8List? decompress() {
    var data = this;
    if (data == null) return null;
    return ZstandardCLI().decompress(data);
  }
}
