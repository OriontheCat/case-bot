class Weapon extends Pistols {
  String name;
  String type;

  Weapon(String this.name, String this.type);
}

abstract class WeaponCollection {}

class Pistols extends WeaponCollection {
  static Weapon glock_18 = Weapon("Glock-18", "Pistol");
  static Weapon p250 = Weapon("P250", "Pistol");
  static Weapon desert_eagle = Weapon("Desert Eagle", "Pistol");
  static Weapon dual_berettas = Weapon("Dual Berettas", "Pistol");
  static Weapon tec_9 = Weapon("Tec-9", "Pistol");
  static Weapon cz75_auto = Weapon("CZ75 Auto", "Pistol");
  static Weapon r8_revolver = Weapon("R8 Revolver", "Pistol");
  static Weapon p2000 = Weapon("P2000", "Pistol");
  static Weapon usp_s = Weapon("USP-S", "Pistol");
  static Weapon five_seven = Weapon("Five-SeveN", "Pistol");
}

class Shotguns extends WeaponCollection {
  static Weapon nova = Weapon("Nova", "Shotgun");
  static Weapon xm1014 = Weapon("XM1014", "Shotgun");
  static Weapon sawed_off = Weapon("Sawed-Off", "Shotgun");
  static Weapon mag_7 = Weapon("MAG-7", "Shotgun");
}

class SubmachineGuns extends WeaponCollection {
  static Weapon mac_10 = Weapon("MAC-10", "Submachine Gun");
  static Weapon mp7 = Weapon("MP7", "Submachine Gun");
  static Weapon mp5sd = Weapon("MP5SD", "Submachine Gun");
  static Weapon ump_45 = Weapon("UMP-45", "Submachine Gun");
  static Weapon pp_bizon = Weapon("PP-Bizon", "Submachine Gun");
  static Weapon p90 = Weapon("P90", "Submachine Gun");
  static Weapon mp9 = Weapon("MP9", "Submachine Gun");
}

class Rifles extends WeaponCollection {
  static Weapon galil_ar = Weapon("Galil AR", "Rifle");
  static Weapon ak_47 = Weapon("AK-47", "Rifle");
  static Weapon ssg_08 = Weapon("SSG 08", "Rifle");
  static Weapon sg_553 = Weapon("SG 553", "Rifle");
  static Weapon awp = Weapon("AWP", "Rifle");
  static Weapon g3sg1 = Weapon("G3SG1", "Rifle");
  static Weapon famas = Weapon("FAMAS", "Rifle");
  static Weapon m4a4 = Weapon("M4A4", "Rifle");
  static Weapon m4a1_s = Weapon("M4A1-S", "Rifle");
  static Weapon aug = Weapon("AUG", "Rifle");
  static Weapon scar_20 = Weapon("SCAR-20", "Rifle");
}

class MachineGuns extends WeaponCollection {
  static Weapon m249 = Weapon("M249", "Machine Gun");
  static Weapon negev = Weapon("Negev", "Machine Gun");
}

class Knives extends WeaponCollection {
  static Weapon navaja = Weapon("Navaja", "Knife");
  static Weapon stiletto = Weapon("Stiletto", "Knife");
  static Weapon talon = Weapon("Talon", "Knife");
  static Weapon ursus = Weapon("Ursus", "Knife");
}
