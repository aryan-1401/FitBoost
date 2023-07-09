import 'package:flutter/material.dart';
import 'package:fitboost/sections/category.dart';
import 'package:fitboost/sections/diet_recommendations.dart';
import 'package:fitboost/sections/popular_diets.dart';
import 'package:fitboost/sections/search_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Color.fromRGBO(35, 40, 38, 1.0),
      body: ListView(
        children: [
          SearchField(),
          Category(),
          SizedBox(
            height: 40,
          ),
          DietRecommendations(),
          SizedBox(
            height: 40,
          ),
          PopularDiets()
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        "Breakfast",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color.fromRGBO(142, 217, 93, 1.0),
      leading: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          "assets/icons/Arrow - Left 2.svg",
          height: 20,
          width: 20,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 40,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/dots.svg",
              height: 5,
              width: 5,
            ),
          ),
        ),
      ],
    );
  }
}
