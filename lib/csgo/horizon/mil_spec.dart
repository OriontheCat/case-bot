import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/csgo/rarity.dart';
import 'package:dart_case_bot/weapons.dart';

Collection mil_spec = RarityCollection(
                  rarity: Rarity.mil_spec,
                  percentage: 79.92 / 100,
                  skins: [
                    Skin(
                        name: "Survivalist",
                        weapon: Weapons.pistols.r8_revolver,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 0.7],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_revolver_cu_r8_survivalist_light_large.cda482f11a63c89c574211b8d5ea9a60703e3cd2.png"),
                    Skin(
                        name: "Shred",
                        weapon: Weapons.pistols.dual_berettas,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 0.5],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_elite_sp_elites_winter_raider_light_large.eddc2e91d0081e57588b745589209094a6b3e9b6.png"),
                    Skin(
                        name: "Capillary",
                        weapon: SubmachineGuns.mp9,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 0.7],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_mp9_cu_mp9_vein_light_large.d0189b21fba4603ff88d407d6af0e63093f22ba7.png"),
                    Skin(
                        name: "Traction",
                        weapon: SubmachineGuns.p90,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_p90_gs_p90_tread_light_large.0acb87de3db60e1c07aa159fd5b8238b11bb8f8f.png"),
                    Skin(
                        name: "Amber Slipstream",
                        weapon: Rifles.aug,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 0.55],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_aug_hy_aug_torn_orange_light_large.53b51a022d38ea39eff5ffbed92551dc741e17c3.png"),
                    Skin(
                        name: "Snek-9",
                        weapon: Weapons.pistols.tec_9,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_tec9_cu_tec9_snake_light_large.9065015e55daa4190b97a8bc033925ed0aeb1abd.png"),
                    Skin(
                        name: "Warhawk",
                        weapon: Weapons.pistols.glock_18,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_glock_gs_glock_thunder_dust_light_large.0e26afdd95bac17ce01c6e097ca0b97db3cffee4.png"),
                  ])