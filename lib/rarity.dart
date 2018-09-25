import 'package:dart_case_bot/color.dart';

class Rarity {
  String name;
  int level;
  RarityColor color;
  static final Rarity common =
      Rarity(name: "Common", level: 0, color: RarityColor("#b0c3d9"));
  static final Rarity consumer_grade =
      Rarity(name: "Consumer Grade", level: 0, color: RarityColor("#b0c3d9"));
  static final Rarity base_grade =
      Rarity(name: "Base Grade", level: 0, color: RarityColor("#b0c3d9"));
  static final Rarity uncommon =
      Rarity(name: "Uncommon", level: 1, color: RarityColor("#5e98d9"));
  static final Rarity industrial_grade =
      Rarity(name: "Industrial Grade", level: 1, color: RarityColor("#5e98d9"));
  static final Rarity rare =
      Rarity(name: "Rare", level: 2, color: RarityColor("#4b69ff"));
  static final Rarity mil_spec =
      Rarity(name: "Mil-Spec", level: 2, color: RarityColor("#4b69ff"));
  static final Rarity high_grade =
      Rarity(name: "High Grade", level: 2, color: RarityColor("#4b69ff"));
  static final Rarity mythical =
      Rarity(name: "Mythical", level: 3, color: RarityColor("#8847ff"));
  static final Rarity restricted =
      Rarity(name: "Restricted", level: 3, color: RarityColor("#8847ff"));
  static final Rarity remarkable =
      Rarity(name: "Remarkable", level: 3, color: RarityColor("#8847ff"));
  static final Rarity legendary =
      Rarity(name: "Legendary", level: 4, color: RarityColor("#d32ee6"));
  static final Rarity classified =
      Rarity(name: "Classified", level: 4, color: RarityColor("#d32ee6"));
  static final Rarity exotic =
      Rarity(name: "Exotic", level: 4, color: RarityColor("#d32ee6"));
  static final Rarity ancient =
      Rarity(name: "Ancient", level: 5, color: RarityColor("#eb4b4b"));
  static final Rarity covert =
      Rarity(name: "Covert", level: 5, color: RarityColor("#eb4b4b"));
  static final Rarity extraordinary =
      Rarity(name: "Extraordinary", level: 5, color: RarityColor("#eb4b4b"));
  static final Rarity exceedingly_rare =
      Rarity(name: "Exceedingly Rare", level: 6, color: RarityColor("#ffcc00"));
  static final Rarity melee_weapons =
      Rarity(name: "★ Melee Weapons", level: 6, color: RarityColor("#ffcc00"));
  static final Rarity immortal =
      Rarity(name: "Immortal", level: 7, color: RarityColor("#f2bc4b"));
  static final Rarity contraband =
      Rarity(name: "Contraband", level: 7, color: RarityColor("#f2bc4b"));
  Rarity({String this.name, int this.level, RarityColor this.color});
}
