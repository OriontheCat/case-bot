import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapons.dart' as weapons;

RarityCollection mil_spec =
    RarityCollection(rarity: Rarity.mil_spec, percentage: 79.92 / 100, skins: [
  Skin(
    name: "Survivalist",
    weapon: weapons.r8_revolver,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 0.7],
    percentage: 1 / 7,
  ),
  Skin(
    name: "Shred",
    weapon: weapons.dual_berettas,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 0.5],
    percentage: 1 / 7,
  ),
  Skin(
    name: "Capillary",
    weapon: weapons.mp9,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 0.7],
    percentage: 1 / 7,
  ),
  Skin(
    name: "Traction",
    weapon: weapons.p90,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 1.0],
    percentage: 1 / 7,
  ),
  Skin(
    name: "Amber Slipstream",
    weapon: weapons.aug,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 0.55],
    percentage: 1 / 7,
  ),
  Skin(
    name: "Snek-9",
    weapon: weapons.tec_9,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 1.0],
    percentage: 1 / 7,
  ),
  Skin(
    name: "Warhawk",
    weapon: weapons.glock_18,
    rarity: Rarity.mil_spec,
    possiblewear: [0.0, 1.0],
    percentage: 1 / 7,
  ),
]);
