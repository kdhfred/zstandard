import 'dart:typed_data';

abstract class ZstandardInterface {
  Future<String?> getPlatformVersion();

  Uint8List? compress(
    Uint8List data, {
    int compressionLevel = 3,
  });

  Uint8List? decompress(Uint8List data);
}
