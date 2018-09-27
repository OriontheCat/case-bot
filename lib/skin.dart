import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapon.dart';
import 'dart:math' as Math;
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Skin {
  static final List<Skin> = new List<Skin> [Skin()];
  String name;
  double wear;
  List<double> possiblewear;
  bool statTrak;
  String imageUrl;
  String url;
  Rarity rarity;
  bool canStatTrak;
  Weapon weapon;
  static int nextID = 1;
  int id;
  double percentage;
  double price;
  Skin(
      {String this.name,
      List<double> this.possiblewear: const [0.0, 1.0],
      bool this.canStatTrak: true,
      String this.url,
      Rarity this.rarity,
      Weapon this.weapon,
      double this.percentage});

  Future<Skin> activate() async {
    this.wear = generateWear(this.possiblewear[0], this.possiblewear[1]);
    this.statTrak = (this.canStatTrak && Math.Random().nextInt(9) == 0);
    Map<String, dynamic> imageUrl = await this.getImageUrl();
    this.imageUrl = imageUrl["icon"];
    Map<String, dynamic> priceMap = await this.getSkinPrice();
    this.price = double.parse(priceMap["average_price"]);
    this.id = Skin.nextID;
    Skin.nextID++;
    return this;
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
    if (this.wear < 0.38) return "Field-Tested";
    if (this.wear < 0.45) return "Well-Worn";
    return "Battle-Scarred";
  }

  Future<dynamic> getSkinPrice() async {
    http.Response skinInfo = await http.get(
        'http://csgobackpack.net/api/GetItemPrice/?&extend=true&id=${this.statTrakString}${this.weapon.name} | ${this.name} (${this.wearString})'
            .replaceAll(RegExp(r" "), "%20"));
    return jsonDecode(skinInfo.body);
  }

  Future<dynamic> getImageUrl() async {
    http.Response skinInfo = await http.get(
        'http://csgobackpack.net/api/GetItemPrice/?icon=1&time=1&id=${this.weapon.name} | ${this.name} (${this.wearString})'
            .replaceAll(RegExp(r" "), "%20"));
    return jsonDecode(skinInfo.body);
  }
}
