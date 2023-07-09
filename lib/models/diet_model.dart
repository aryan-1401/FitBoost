import 'package:flutter/material.dart';

class DietModel {
  String name;
  String icon;
  Color boxColor;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;

  DietModel(
      {required this.name,
        required this.icon,
        required this.boxColor,
        required this.level,
        required this.duration,
        required this.calorie,
        required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: 'Honey Pancake',
        icon: 'assets/icons/honey-pancakes.svg',
        boxColor: Color.fromRGBO(130, 217, 96, 1.0),
        level: "Easy",
        duration: "30 mins",
        calorie: "100 kCal",
        viewIsSelected: false));
    diets.add(DietModel(
        name: 'Canai Bread',
        icon: 'assets/icons/canai-bread.svg',
        boxColor: Color.fromRGBO(130, 217, 96, 1.0),
        level: "Easy",
        duration: "20 mins",
        calorie: "230 kCal",
        viewIsSelected: false));

    return diets;
  }
}
