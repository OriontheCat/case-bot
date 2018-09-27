import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/csgo/rarity.dart';
import 'package:dart_case_bot/weapons.dart';

Collection restricted = RarityCollection(
    rarity: Rarity.restricted,
    percentage: 15.98 / 100,
    skins: [
      Skin(
          name: "Toy Soldier",
          weapon: Weapons.nova,
          rarity: Rarity.restricted,
          possiblewear: [0.0, 1.0],
          percentage: 1 / 5,
          imageUrl:
              "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_nova_cu_nova_toy_soldier_light_large.e35320d18405b77fb9dd5e495fe4f625b8ab6c82.png"),
      Skin(
          name: "High Seas",
          weapon: Weapons.g3sg1,
          rarity: Rarity.restricted,
          possiblewear: [0.0, 0.7],
          percentage: 1 / 5,
          imageUrl:
              "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_g3sg1_gs_g3sg1_buccaneer_light_large.49a7445107edc6100ac0dceaae5dbc882791ed4a.png"),
      Skin(
          name: "PAW",
          weapon: Weapons.awp,
          rarity: Rarity.restricted,
          possiblewear: [0.0, 0.5],
          percentage: 1 / 5,
          imageUrl:
              "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_awp_am_awp_pawpaw_light_large.0ff115c31307cc3122536c44a9aef7e64277dc19.png"),
      Skin(
          name: "Eco",
          weapon: Weapons.cz75_auto,
          rarity: Rarity.restricted,
          possiblewear: [0.0, 1.0],
          percentage: 1 / 5,
          imageUrl:
              "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_cz75a_cu_cz75_eco_light_large.19aa7b914ac71968e73ac48b112b9f4c8116c767.png"),
      Skin(
          name: "Powercore",
          weapon: Weapons.mp7,
          rarity: Rarity.restricted,
          possiblewear: [0.0, 0.8],
          percentage: 1 / 5,
          imageUrl:
              "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_mp7_gs_powercore_mp7_light_large.cff12134204aef1ddc67e142088a2b7cec911960.png"),
    ]);
