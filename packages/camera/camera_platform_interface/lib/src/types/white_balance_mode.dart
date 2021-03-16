enum WhiteBalanceMode {
  locked,
  autoWhiteBalance,
  continuousAutoWhiteBalance
}

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
