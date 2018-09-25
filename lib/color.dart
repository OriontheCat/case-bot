import "package:hex/hex.dart";

class RarityColor {
  String hexString;
  RarityColor(String this.hexString);
  int get decimalColor {
    return HEX.decode(hexString.substring(1)).reduce((int first, int next) {
      return first * 10 + next;
    });
  }
}
