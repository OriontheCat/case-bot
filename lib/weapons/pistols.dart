import 'package:dart_case_bot/weapon.dart';

final Map<String, Weapon> knives : {
  "glock_18" : Weapon.pistol("Glock-18"),
  "p250" : Weapon.pistol("P250"),
  "desert_eagle" : Weapon.pistol("Desert Eagle"),
  "dual_berettas" : Weapon.pistol("Dual Berettas"),
  "tec_9" : Weapon.pistol("Tec-9"),
  "cz75_auto" : Weapon.pistol("CZ75-Auto"),
  "r8_revolver" : Weapon.pistol("R8 Revolver"),
  "p2000" : Weapon.pistol("P2000"),
  "usp_s" : Weapon.pistol("USP-S"),
  "five_seven" : Weapon.pistol("Five-SeveN"),
};

Weapon test = knives["tec_9"];