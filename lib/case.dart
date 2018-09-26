import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/collection.dart';

class Case {
  static int nextID = 1;
  final String name;
  List<Skin> skins;
  final String imageUrl;
  int id;
  CaseCollection collection;

  Case(
      {String this.name, String this.imageUrl, CaseCollection this.collection});

  void activate() {
    if (this.id != null) {
      this.id = Case.nextID;
      Case.nextID++;
    }
  }

  Skin open() {
    Skin randomSkin = collection.getRandomSkin()..activate();
    return randomSkin;
  }
}
