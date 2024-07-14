
import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
 final Function press;
  const CategoryCard({
    super.key,
    required this.svgSrc,
    required this.title, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 17,
                  spreadRadius: -23,
                  color: kShadowColor),
            ]),
           
        child: Material(
          color: Colors.transparent,
      child: InkWell(
        onTap: (){
          press();
        },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Spacer(),
                  Image.asset(
                    svgSrc,
                    height: 110,
                    width: 95,
                  ),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
