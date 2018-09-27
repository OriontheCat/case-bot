import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/csgo/rarity.dart';
import 'package:dart_case_bot/weapons.dart';

Collection covert =
    RarityCollection(rarity: Rarity.covert, percentage: 0.64 / 100, skins: [
  Skin(
      name: "Neon Rider",
      weapon: Weapons.ak_47,
      rarity: Rarity.covert,
      possiblewear: [0.0, 0.8],
      percentage: 1 / 2,
      imageUrl:
          "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_ak47_cu_ak_neon_rider_light_large.9209192b514c4ec98146b4747dec8ce407a977c8.png"),
  Skin(
      name: "Code Red",
      weapon: Weapons.desert_eagle,
      rarity: Rarity.covert,
      possiblewear: [0.0, 1.0],
      percentage: 1 / 2,
      imageUrl:
          "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_deagle_gs_deagle_aggressor_light_large.51ffb87f03ae0d3c467d4412f3c246067748e61d.png"),
]);
