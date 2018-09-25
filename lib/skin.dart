import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapon.dart';
import 'dart:math' as Math;

class Skin {
  String name;
  double wear;
  List<double> possiblewear;
  bool statTrack;
  String imageURL;
  Rarity rarity;
  bool canStatTrack;
  Weapon weapon;
  static int nextID = 1;
  int id;
  double percentage;
  Skin(
      {String this.name,
      List<double> this.possiblewear: const [0.0, 1.0],
      bool this.canStatTrack: true,
      String this.imageURL,
      Rarity this.rarity,
      Weapon this.weapon,
      double this.percentage}) {
    this.wear = generateWear(this.possiblewear[0], this.possiblewear[1]);
    this.statTrack = this.canStatTrack && Math.Random().nextDouble() >= 0.1;
  }

  void activate() {
    this.id = Skin.nextID;
    Skin.nextID++;
  }

  static double generateWear(double min, double max) {
    return Math.Random().nextDouble() * (max - min) + min;
  }

  String get wearString {
    if (this.wear < 0.07) return "Factory New";
    if (this.wear < 0.15) return "Minimal Wear";
    if (this.wear < 0.38) return "Field Tested";
    if (this.wear < 0.45) return "Well Worn";
    return "Battle Scarred";
  }
}
