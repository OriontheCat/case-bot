class Weapon {
  String name;
  String type;
  Weapon(String this.name, String this.type);

  String get url {
    if (this.type == "Knife") {
      return "https://csgostash.com/weapon/" + this.name + this.type;
    }
    return ("https://csgostash.com/weapon/" + this.name)
        .replaceAll(new RegExp(r" "), "+");
  }

  String get imageUrl {
    if (this.type == "Knife") {
      return "https://vignette.wikia.nocookie.net/cswikia/images/a/ad/Csgo-default_rare_item.png/revision/latest?cb=20150227163025";
    }
    return ("https://csgostash.com/weapon/" + this.name + ".png")
        .replaceAll(new RegExp(r" "), "_");
  }

  Weapon.pistol(String this.name, [String this.type = "Pistol"]);

  Weapon.shotgun(String this.name, [String this.type = "Shotgun"]);

  Weapon.submachine_gun(String this.name,
      [String this.type = "Submachine Gun"]);

  Weapon.rifle(String this.name, [String this.type = "Rifle"]);

  Weapon.machine_gun(String this.name, [String this.type = "Machine Gun"]);

  Weapon.knife(String this.name, [String this.type = "Knife"]);
}

class WeaponClass {}
