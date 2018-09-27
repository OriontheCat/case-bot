import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapons.dart' as weapons;

RarityCollection restricted = RarityCollection(
    rarity: Rarity.restricted,
    percentage: 15.98 / 100,
    skins: [
      Skin(
        name: "Toy Soldier",
        weapon: weapons.nova,
        rarity: Rarity.restricted,
        possiblewear: [0.0, 1.0],
        percentage: 1 / 5,
      ),
      Skin(
        name: "High Seas",
        weapon: weapons.g3sg1,
        rarity: Rarity.restricted,
        possiblewear: [0.0, 0.7],
        percentage: 1 / 5,
      ),
      Skin(
        name: "PAW",
        weapon: weapons.awp,
        rarity: Rarity.restricted,
        possiblewear: [0.0, 0.5],
        percentage: 1 / 5,
      ),
      Skin(
        name: "Eco",
        weapon: weapons.cz75_auto,
        rarity: Rarity.restricted,
        possiblewear: [0.0, 1.0],
        percentage: 1 / 5,
      ),
      Skin(
        name: "Powercore",
        weapon: weapons.mp7,
        rarity: Rarity.restricted,
        possiblewear: [0.0, 0.8],
        percentage: 1 / 5,
      ),
    ]);
