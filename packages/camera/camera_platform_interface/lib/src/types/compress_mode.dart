enum CompressMode {
  compressed,
  uncompressed,
}

String serializeCompressMode(CompressMode compressMode) {
  if (compressMode == null) return null;
  switch (compressMode) {
    case CompressMode.compressed:
      return 'compressed';
    case CompressMode.uncompressed:
      return 'uncompressed';
    default:
      throw ArgumentError('Unknown CompressedMode value');
  }
}

CompressMode deserializeCompressMode(String str) {
  if (str == null) return null;
  switch (str) {
    case "compressed":
      return CompressMode.compressed;
    case "uncompressed":
      return CompressMode.uncompressed;
    default:
      throw ArgumentError('"$str" is not a valid Compress value');
  }
}
