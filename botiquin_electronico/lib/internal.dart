library my_tools.internal;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BotiquinClass with ChangeNotifier {
  final List<String> _medicamentos = [];
  
  List<String> get items => _medicamentos;

  int length() {
    cargar();
    return _medicamentos.length;
  }

  void cargar() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> meds = prefs.getStringList('botiquin') ?? [];
    _medicamentos.clear();
    _medicamentos.addAll(meds);
    notifyListeners();
  }

  List<String> get(){
    cargar();
    return _medicamentos;
  }


  void add(String item) async{
    final prefs = await SharedPreferences.getInstance();
    final List<String> meds = prefs.getStringList('botiquin') ?? [];
    if(!meds.contains(item)){
      meds.add(item);
      prefs.setStringList('botiquin', meds);
      print('Añadido');
      cargar();
    }
    notifyListeners();
  }

  void remove(String item) async{
    final prefs = await SharedPreferences.getInstance();
    final List<String> meds = prefs.getStringList('botiquin') ?? [];
    meds.remove(item);
    prefs.setStringList('botiquin', meds);
    cargar();
    notifyListeners();
  }
}

BotiquinClass bot = BotiquinClass();