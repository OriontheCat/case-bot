import 'package:dart_case_bot/skin.dart';
import 'package:dart_case_bot/collection.dart';

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
