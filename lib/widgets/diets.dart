import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/diet_model.dart';

class Diets extends StatelessWidget {
  Diets({super.key});

  List<DietModel> diets = [];

  void _getDiets() {
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getDiets();
    return Container(
      height: 240,
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 20, right: 20),
          scrollDirection: Axis.horizontal,
          itemCount: diets.length,
          separatorBuilder: (context, index) => const SizedBox(
            width: 25,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: 210,
              decoration: BoxDecoration(
                  color: diets[index].boxColor.withOpacity(0.4),
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
                  SvgPicture.asset(diets[index].icon),
                  Column(
                    children: [
                      Text(
                        diets[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        diets[index].level +
                            ' | ' +
                            diets[index].duration +
                            ' | ' +
                            diets[index].calorie,
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    height: 45,
                    width: 130,
                    child: Center(
                      child: Text(
                        "View",
                        style: TextStyle(
                            color: diets[index].viewIsSelected
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(colors: [
                          diets[index].viewIsSelected
                              ? Colors.blue.shade300.withOpacity(0.8)
                              : Colors.transparent,
                          diets[index].viewIsSelected
                              ? Colors.deepPurple.shade300.withOpacity(0.7)
                              : Colors.transparent
                        ])),
                  )
                ],
              ),
            );
          }),
    );
  }
}
