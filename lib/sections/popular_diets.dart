import 'package:flutter/material.dart';
import 'package:fitboost/widgets/popular_diets_catalog.dart';

class PopularDiets extends StatelessWidget {
  const PopularDiets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Popular",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        PopularDietsCatalog()
      ],
    );
  }
}
