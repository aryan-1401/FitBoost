import 'package:flutter/material.dart';
import '../widgets/categories.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Category",
            style: TextStyle(
                color: Color.fromRGBO(235, 235, 234, 1.0), fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Categories()
      ],
    );
  }
}
