import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String icon;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: "Smoothies",
        icon: "assets/icons/orange-snacks.svg",
        boxColor: Color.fromRGBO(130, 217, 96, 1.0)));
    categories.add(CategoryModel(
        name: "Cake",
        icon: "assets/icons/pancakes.svg",
        boxColor: Color.fromRGBO(130, 217, 96, 1.0)));
    categories.add(CategoryModel(
        name: "Salad",
        icon: "assets/icons/plate.svg",
        boxColor: Color.fromRGBO(130, 217, 96, 1.0)));
    categories.add(CategoryModel(
        name: "Pie",
        icon: "assets/icons/pie.svg",
        boxColor: Color.fromRGBO(130, 217, 96, 1.0)));

    return categories;
  }
}
