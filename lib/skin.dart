import 'package:dart_case_bot/csgo/rarity.dart';
import 'package:dart_case_bot/weapon.dart';
import 'dart:math' as Math;

class Skin {
  String name;
  double wear;
  List<double> possiblewear;
  bool statTrak;
  String imageUrl;
  Rarity rarity;
  bool canStatTrak;
  Weapon weapon;
  static int nextID = 1;
  int id;
  double percentage;
  Skin(
      {String this.name,
      List<double> this.possiblewear: const [0.0, 1.0],
      bool this.canStatTrak: true,
      String this.imageUrl,
      Rarity this.rarity,
      Weapon this.weapon,
      double this.percentage}) {
    this.wear = generateWear(this.possiblewear[0], this.possiblewear[1]);
    this.statTrak = (this.canStatTrak && Math.Random().nextInt(9) == 0);
  }

  void activate() {
    this.id = Skin.nextID;
    Skin.nextID++;
  }

  static double generateWear(double min, double max) {
    return Math.Random().nextDouble() * (max - min) + min;
  }

  String get statTrakString {
    if (this.statTrak) {
      return "StatTrak™ ";
    }
    return "";
  }

  String get wearString {
    if (this.wear < 0.07) return "Factory New";
    if (this.wear < 0.15) return "Minimal Wear";
    if (this.wear < 0.38) return "Field Tested";
    if (this.wear < 0.45) return "Well Worn";
    return "Battle Scarred";
  }
}
