
import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
          svgScr: 'assets/appointment.png',
          title: "Today",
          press: (){},
          isActive: true,
           ),
          BottomNavItem(
            svgScr: "assets/dumbbell.png",
            title: "All Exercises",
             press: (){},
          ),
          BottomNavItem(
            svgScr: "assets/setting.png",
            title: "Setting", 
            press: (){},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr; 
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    super.key, 
    required this.svgScr,
     required this.title,
      required this.press,
       this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        press;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(svgScr,height: 20,width: 20,color: isActive? kActiveIconColor : kTextColor),
          Text(title,
          style: TextStyle(color: isActive? kActiveIconColor : kTextColor),),
        ],
      ),
    );
  }
}