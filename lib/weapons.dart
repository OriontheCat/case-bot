import 'package:dart_case_bot/weapon.dart';
import 'package:dart_case_bot/weapons/pistols.dart';
import 'package:dart_case_bot/weapons/shotguns.dart';
import 'package:dart_case_bot/weapons/submachine_guns.dart';
import 'package:dart_case_bot/weapons/rifles.dart';
import 'package:dart_case_bot/weapons/machine_guns.dart';
import 'package:dart_case_bot/weapons/knives.dart';

class Weapons {
  static WeaponClass pistols = Pistols();
  static WeaponClass shotguns = Shotguns();
  static WeaponClass submachine_guns = SubmachineGuns();
  static WeaponClass rifles = Rifles();
  static WeaponClass machine_guns = MachineGuns();
  static WeaponClass knives = Knives();
}
