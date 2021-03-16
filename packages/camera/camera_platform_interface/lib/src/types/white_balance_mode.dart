/// The possible white balance modes that can be set for a camera.
enum WhiteBalanceMode { locked, autoWhiteBalance, continuousAutoWhiteBalance }

/// Returns the white balance mode as a String.
String serializeWhiteBalanceMode(WhiteBalanceMode whiteBalanceMode) {
  if (whiteBalanceMode == null) return null;
  switch (whiteBalanceMode) {
    case WhiteBalanceMode.locked:
      return 'locked';
    case WhiteBalanceMode.autoWhiteBalance:
      return 'autoWhiteBalance';
    case WhiteBalanceMode.continuousAutoWhiteBalance:
      return 'continuousAutoWhiteBalance';
    default:
      throw ArgumentError('Unknown WhiteBalanceMode value');
  }
}

/// Returns the white balance mode for a given String.
WhiteBalanceMode deserializeWhiteBalanceMode(String str) {
  if (str == null) return null;
  switch (str) {
    case "locked":
      return WhiteBalanceMode.locked;
    case "autoWhiteBalance":
      return WhiteBalanceMode.autoWhiteBalance;
    case "continuousAutoWhiteBalance":
      return WhiteBalanceMode.continuousAutoWhiteBalance;
    default:
      throw ArgumentError('"$str" is not a valid WhiteBalanceMode value');
  }
}
