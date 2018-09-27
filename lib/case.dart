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
                  rarity: Rarity.covert,
                  percentage: 0.26 / 100,
                  skins: [
                    Skin(
                        name: "★ (Vanilla)",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [1.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/weapons/base_weapons/weapon_knife_gypsy_jackknife.1a7e57791fa9383cce67d5915ffc442c7de2694a.png"),
                    Skin(
                        name: "Fade",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 0.08],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aa_fade_light_large.230f96c68e3dfd7936d76b44d7093cdc109b0d45.png"),
                    Skin(
                        name: "Crimson Web",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_hy_webs_light_large.56c049ebbe3f61c39bbc61b9658566ae4caf0998.png"),
                    Skin(
                        name: "Slaughter",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.01, 0.26],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_am_zebra_light_large.d05268ca27ffc151fc41aa706c2fd809a30b4a93.png"),
                    Skin(
                        name: "Blue Steel",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aq_blued_light_large.1ce2d4556d50d1c13ca50c65a9a68f9e943ab147.png"),
                    Skin(
                        name: "Stained",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aq_forced_light_large.ae7a6c5d03a34e2e9bb1510624dbd852a6b33367.png"),
                    Skin(
                        name: "Case Hardened",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.0, 1.0],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_aq_oiled_light_large.bda53914823c916e925f1ccfdccb779438a837e7.png"),
                    Skin(
                        name: "Urban Masked",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_tape_urban_light_large.c73dbd39174d78663ee57fb6d81a4ab90f3da3e8.png"),
                    Skin(
                        name: "Night Stripe",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_nightstripe_light_large.bb637d2594b3d5c5f4bcb82a040be380660b772a.png"),
                    Skin(
                        name: "Boreal Forest",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_hy_forest_boreal_light_large.be1b7fb6471b0630f0709e3b8546e60d8a35fc12.png"),
                    Skin(
                        name: "Forest DDPAT",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_hy_ddpat_light_large.2b9ad6c3016e78b55f6b245c25e7a373f05993d1.png"),
                    Skin(
                        name: "Scorched",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_dapple_light_large.879ba0d22ebaccd2ba4b62c753e2db58b855a7a0.png"),
                    Skin(
                        name: "Safari Mesh",
                        weapon: Weapons.navaja,
                        rarity: Rarity.covert,
                        possiblewear: [0.06, 0.8],
                        percentage: 1 / (4 * 13),
                        imageUrl:
                            "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/default_generated/weapon_knife_gypsy_jackknife_sp_mesh_tan_light_large.f8ae9f3c56bce9253b10d8c390894faa344d30ed.png"),
                  ])
            ]));
}
