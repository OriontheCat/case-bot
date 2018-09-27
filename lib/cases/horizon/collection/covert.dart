import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapons.dart' as weapons;

RarityCollection covert =
    RarityCollection(rarity: Rarity.covert, percentage: 0.64 / 100, skins: [
  Skin(
    name: "Neon Rider",
    weapon: weapons.ak_47,
    rarity: Rarity.covert,
    possiblewear: [0.0, 0.8],
    percentage: 1 / 2,
  ),
  Skin(
    name: "Code Red",
    weapon: weapons.desert_eagle,
    rarity: Rarity.covert,
    possiblewear: [0.0, 1.0],
    percentage: 1 / 2,
  ),
]);
