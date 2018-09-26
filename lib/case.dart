import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/collection.dart';
import 'package:dart_case_bot/rarity.dart';
import 'package:dart_case_bot/weapon.dart';

class Case {
  static int nextID = 1;
  final String name;
  List<Skin> skins;
  final String imageUrl;
  int id;
  CaseCollection collection;
  bool _activated;

  Case(
      {String this.name, String this.imageUrl, CaseCollection this.collection});

  void activate() {
    if (!_activated) {
      this.id = Case.nextID;
      Case.nextID++;
    }
  }

  bool get activated {
    return _activated;
  }

  Skin open() {
    return collection.getRandomSkin();
  }
}

class HorizonCase extends Case {
  HorizonCase()
      : super(
            name: "Horizon Case",
            imageUrl: "https://csgostash.com/img/containers/c244.png",
            collection: CaseCollection([
              RarityCollection(
                  rarity: Rarity.mil_spec,
                  percentage: 79.92 / 100,
                  skins: [
                    Skin(
                        name: "Survivalist",
                        weapon: Pistols.r8_revolver,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 0.7],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_revolver_cu_r8_survivalist_light_large.cda482f11a63c89c574211b8d5ea9a60703e3cd2.png"),
                    Skin(
                        name: "Shred",
                        weapon: Pistols.dual_berettas,
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
                        weapon: Pistols.tec_9,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_tec9_cu_tec9_snake_light_large.9065015e55daa4190b97a8bc033925ed0aeb1abd.png"),
                    Skin(
                        name: "Warhawk",
                        weapon: Pistols.glock_18,
                        rarity: Rarity.mil_spec,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 7,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_glock_gs_glock_thunder_dust_light_large.0e26afdd95bac17ce01c6e097ca0b97db3cffee4.png"),
                  ]),
              RarityCollection(
                  rarity: Rarity.restricted,
                  percentage: 15.98 / 100,
                  skins: [
                    Skin(
                        name: "Toy Soldier",
                        weapon: Shotguns.nova,
                        rarity: Rarity.restricted,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 5,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_nova_cu_nova_toy_soldier_light_large.e35320d18405b77fb9dd5e495fe4f625b8ab6c82.png"),
                    Skin(
                        name: "High Seas",
                        weapon: Rifles.g3sg1,
                        rarity: Rarity.restricted,
                        possiblewear: [0.0, 0.7],
                        percentage: 1 / 5,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_g3sg1_gs_g3sg1_buccaneer_light_large.49a7445107edc6100ac0dceaae5dbc882791ed4a.png"),
                    Skin(
                        name: "PAW",
                        weapon: Rifles.awp,
                        rarity: Rarity.restricted,
                        possiblewear: [0.0, 0.5],
                        percentage: 1 / 5,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_awp_am_awp_pawpaw_light_large.0ff115c31307cc3122536c44a9aef7e64277dc19.png"),
                    Skin(
                        name: "Eco",
                        weapon: Pistols.cz75_auto,
                        rarity: Rarity.restricted,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 5,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_cz75a_cu_cz75_eco_light_large.19aa7b914ac71968e73ac48b112b9f4c8116c767.png"),
                    Skin(
                        name: "Powercore",
                        weapon: SubmachineGuns.mp7,
                        rarity: Rarity.restricted,
                        possiblewear: [0.0, 0.8],
                        percentage: 1 / 5,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_mp7_gs_powercore_mp7_light_large.cff12134204aef1ddc67e142088a2b7cec911960.png"),
                  ]),
              RarityCollection(
                  rarity: Rarity.classified,
                  percentage: 3.2 / 100,
                  skins: [
                    Skin(
                        name: "Devourer",
                        weapon: Shotguns.sawed_off,
                        rarity: Rarity.classified,
                        possiblewear: [0.0, 0.8],
                        percentage: 1 / 3,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_sawedoff_cu_sawedoff_devourer_light_large.d8365e13320f20eb532a2d5109e1fc35562bc376.png"),
                    Skin(
                        name: "Eye of Athena",
                        weapon: Rifles.famas,
                        rarity: Rarity.classified,
                        possiblewear: [0.0, 0.7],
                        percentage: 1 / 3,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_famas_cu_famas_owl_orange_light_large.7cb3a86d36317530964f40d66b755789de7ca88a.png"),
                    Skin(
                        name: "Nightmare",
                        weapon: Rifles.m4a1_s,
                        rarity: Rarity.classified,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 3,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_famas_cu_famas_owl_orange_light_large.7cb3a86d36317530964f40d66b755789de7ca88a.png"),
                  ]),
              RarityCollection(
                  rarity: Rarity.covert,
                  percentage: 0.64 / 100,
                  skins: [
                    Skin(
                        name: "Neon Rider",
                        weapon: Rifles.ak_47,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 0.8],
                        percentage: 1 / 2,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_ak47_cu_ak_neon_rider_light_large.9209192b514c4ec98146b4747dec8ce407a977c8.png"),
                    Skin(
                        name: "Code Red",
                        weapon: Pistols.desert_eagle,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / 2,
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_deagle_gs_deagle_aggressor_light_large.51ffb87f03ae0d3c467d4412f3c246067748e61d.png"),
                  ]),
              RarityCollection(
                  rarity: Rarity.covert,
                  percentage: 0.26 / 100,
                  skins: [
                    Skin(
                        name: "★ (Vanilla)",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [1.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/weapons/base_weapons/weapon_knife_gypsy_jackknife.1a7e57791fa9383cce67d5915ffc442c7de2694a.png"),
                    Skin(
                        name: "Fade",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 0.08],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aa_fade_light_large.230f96c68e3dfd7936d76b44d7093cdc109b0d45.png"),
                    Skin(
                        name: "Crimson Web",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_hy_webs_light_large.56c049ebbe3f61c39bbc61b9658566ae4caf0998.png"),
                    Skin(
                        name: "Slaughter",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.01, 0.26],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_am_zebra_light_large.d05268ca27ffc151fc41aa706c2fd809a30b4a93.png"),
                    Skin(
                        name: "Blue Steel",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aq_blued_light_large.1ce2d4556d50d1c13ca50c65a9a68f9e943ab147.png"),
                    Skin(
                        name: "Stained",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aq_forced_light_large.ae7a6c5d03a34e2e9bb1510624dbd852a6b33367.png"),
                    Skin(
                        name: "Case Hardened",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aq_oiled_light_large.bda53914823c916e925f1ccfdccb779438a837e7.png"),
                    Skin(
                        name: "Urban Masked",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_tape_urban_light_large.c73dbd39174d78663ee57fb6d81a4ab90f3da3e8.png"),
                    Skin(
                        name: "Night Stripe",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_nightstripe_light_large.bb637d2594b3d5c5f4bcb82a040be380660b772a.png"),
                    Skin(
                        name: "Boreal Forest",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_hy_forest_boreal_light_large.be1b7fb6471b0630f0709e3b8546e60d8a35fc12.png"),
                    Skin(
                        name: "Forest DDPAT",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_hy_ddpat_light_large.2b9ad6c3016e78b55f6b245c25e7a373f05993d1.png"),
                    Skin(
                        name: "Scorched",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_dapple_light_large.879ba0d22ebaccd2ba4b62c753e2db58b855a7a0.png"),
                    Skin(
                        name: "Safari Mesh",
                        weapon: Knives.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_mesh_tan_light_large.f8ae9f3c56bce9253b10d8c390894faa344d30ed.png"),
                  ])
            ]));
}
