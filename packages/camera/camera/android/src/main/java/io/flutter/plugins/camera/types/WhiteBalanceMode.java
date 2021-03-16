package android.src.main.java.io.flutter.plugins.camera.types;


public enum WhiteBalanceMode {
  locked("locked"),
  autoWhiteBalance("autoWhiteBalance"),
  continuousAutoWhiteBalance("continuousAutoWhiteBalance");

  private final String strValue;

  WhiteBalanceMode(String strValue) {
    this.strValue = strValue;
  }

  public static WhiteBalanceMode getValueForString(String modeStr) {
    for (WhiteBalanceMode value : values()) {
      if (value.strValue.equals(modeStr)) return value;
    }
    return null;
  }

  @Override
  public String toString() {
    return strValue;
  }
}
