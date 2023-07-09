import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/popular_diet_model.dart';

class PopularDietsCatalog extends StatelessWidget {
  PopularDietsCatalog({super.key});

  List<PopularDietsModel> popularDiets = [];

  void _getPopularDiets() {
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getPopularDiets();
    return Container(
      height: 240,
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemCount: popularDiets.length,
          separatorBuilder: (context, index) => const SizedBox(
            width: 25,
          ),
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              decoration: BoxDecoration(
                  color: popularDiets[index].viewIsSelected
                      ? Colors.white
                      : Colors.transparent,
                  boxShadow: popularDiets[index].viewIsSelected
                      ? [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        offset: Offset(0, 10),
                        blurRadius: 40,
                        spreadRadius: 0)
                  ]
                      : [],
                  borderRadius: BorderRadius.circular(18)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    popularDiets[index].icon,
                    height: 60,
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popularDiets[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Text(
                        '${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/button.svg',
                      width: 30,
                      height: 30,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
