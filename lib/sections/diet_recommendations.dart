import 'package:flutter/material.dart';
import '../widgets/diets.dart';

class DietRecommendations extends StatelessWidget {
  const DietRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Diet Recommendations",
            style: TextStyle(
                color: Color.fromRGBO(235, 235, 234, 1.0), fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Diets()
      ],
    );
  }
}
