import 'package:flutter/material.dart';
import 'package:meditation_app/bottomnavbar.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/screens/details_screen.dart';
import 'package:meditation_app/screens/diet_details.dart';
import 'package:meditation_app/screens/exercise_screen.dart';
import 'package:meditation_app/screens/meditation_details.dart';

import 'category_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  "assets/yoga-position.png",
                ),
              ),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Color(0XFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/menu.png",
                    ),
                  ),
                ),
                Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            icon: Icon(Icons.search),
            border: InputBorder.none),
      ),
    ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(
                        title: "Diet Recommendation",
                        svgSrc: "assets/diet-food.png",
                        press: ()  {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)
                          {return DietDetails();
                          }),
                          );
                        },
                      ),
                      CategoryCard(
                        title: "Exercises",
                        svgSrc: "assets/exercise.png",
                        press: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)
                          {return ExerciseScreen();
                          }));
                        },
                      ),
                      CategoryCard(
                        title: "Meditation",
                        svgSrc: "assets/meditate.png",
                        press: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)
                          {return MeditationDetails();
                          }));
                        },
                      ),
                      CategoryCard(
                        title: "Yoga",
                        svgSrc: "assets/yoga.png",
                        press: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)
                          {return DetailScreen();
                          }));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

 


