import 'package:flutter/material.dart';
import 'package:orinova_education_app/model/SelectedCategory.dart';
import 'package:riverpod/riverpod.dart';


class SelectedTextProvider extends ChangeNotifier {
  List<SelectedText> _selectedTexts = [];

  List<SelectedText> get selectedTexts => _selectedTexts;

  void addSelectedText(String text) {
    _selectedTexts.add(SelectedText(text));
    notifyListeners();
  }
}