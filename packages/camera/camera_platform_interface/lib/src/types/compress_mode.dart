/// The possible compression modes that can be set for a camera.
enum CompressMode {
  /// Compressed
  compressed,

  /// Uncompressed
  uncompressed,
}

/// Returns the compression mode as a String.
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

/// Returns the compression mode for a given String.
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
