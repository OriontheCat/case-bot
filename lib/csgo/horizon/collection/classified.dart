import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/csgo/rarity.dart';
import 'package:dart_case_bot/weapons.dart';

Collection classified =
    RarityCollection(rarity: Rarity.classified, percentage: 3.2 / 100, skins: [
  Skin(
      name: "Devourer",
      weapon: Weapons.sawed_off,
      rarity: Rarity.classified,
      possiblewear: [0.0, 0.8],
      percentage: 1 / 3,
      imageUrl:
          "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_sawedoff_cu_sawedoff_devourer_light_large.d8365e13320f20eb532a2d5109e1fc35562bc376.png"),
  Skin(
      name: "Eye of Athena",
      weapon: Weapons.famas,
      rarity: Rarity.classified,
      possiblewear: [0.0, 0.7],
      percentage: 1 / 3,
      imageUrl:
          "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_famas_cu_famas_owl_orange_light_large.7cb3a86d36317530964f40d66b755789de7ca88a.png"),
  Skin(
      name: "Nightmare",
      weapon: Weapons.m4a1_s,
      rarity: Rarity.classified,
      possiblewear: [0.0, 1.0],
      percentage: 1 / 3,
      imageUrl:
          "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_famas_cu_famas_owl_orange_light_large.7cb3a86d36317530964f40d66b755789de7ca88a.png"),
]);
