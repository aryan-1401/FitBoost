import 'package:flutter/material.dart';
import 'package:fitboost/models/category_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  Categories({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void initState() {
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Container(
      height: 120,
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 20, right: 20),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (context, index) => const SizedBox(
            width: 25,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.11),
                        blurRadius: 10,
                        spreadRadius: 0)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(categories[index].icon),
                  ),
                  Text(
                    categories[index].name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withAlpha(200),
                        fontSize: 14),
                  )
                ],
              ),
            );
          }),
    );
  }
}
