import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapons.dart' as weapons;

RarityCollection classified =
    RarityCollection(rarity: Rarity.classified, percentage: 3.2 / 100, skins: [
  Skin(
    name: "Devourer",
    weapon: weapons.sawed_off,
    rarity: Rarity.classified,
    possiblewear: [0.0, 0.8],
    percentage: 1 / 3,
  ),
  Skin(
    name: "Eye of Athena",
    weapon: weapons.famas,
    rarity: Rarity.classified,
    possiblewear: [0.0, 0.7],
    percentage: 1 / 3,
  ),
  Skin(
    name: "Nightmare",
    weapon: weapons.m4a1_s,
    rarity: Rarity.classified,
    possiblewear: [0.0, 1.0],
    percentage: 1 / 3,
  ),
]);
