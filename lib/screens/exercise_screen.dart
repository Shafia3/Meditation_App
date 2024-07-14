
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app/workout_screen.dart';
// import 'package:animations/animations.dart';


class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0XFFE9E9E9),
      
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedIconTheme: IconThemeData(
          color: const Color(0XFF200087)
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: "Home",
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"
            ),
             BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
            ),
          
        ],
      ),
    
      body: 
          Stack(
            children: [
              Positioned(
                top: 0,
                height: height * 0.50,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50),
                  ),
                  child: Container(
                    color: Color.fromARGB(255, 238, 237, 237),
                    padding:
                        EdgeInsets.only(top: 15, left: 15, right: 10, bottom: 10),
                    child: Image.asset("assets/ex.png"),
                  ),
                ),
              ),
              Positioned( 
                top: height * 0.40,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: height * .5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 40,
                          bottom: 5,
                          left: 25,
                          right: 10,
                        ),
                        child: Text(
                          "YOUR NEXT WORKOUT",
                          style: TextStyle(
                            color: Color.fromARGB(220, 105, 104, 104),
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: OpenContainer(
                          closedElevation: 0,
                          transitionDuration: Duration(milliseconds: 1000),
                          transitionType: ContainerTransitionType.fade,
                          closedColor: const Color(0XFFE9E9E9),
                          openBuilder: (context, _) {
                            return WorkoutScreen();
                          } ,
                          closedBuilder: (context, VoidCallback OpenContainer){
                            return GestureDetector(
                            onTap: OpenContainer,
                          child: Container(
                            height: height * .2,
                            width: width * .9,
                            margin: EdgeInsets.only(bottom: 10, left: 32, right: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0XFF20008B),
                                  const Color(0XFF200087),
                                ],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,
                                  left: 20),
                                  child: Text(
                                    "UPPER BODY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0XFF5B4D9D),
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          "assets/chest.png",
                                          color: Colors.white,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0XFF5B4D9D),
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          "assets/back.png",
                                          color: Colors.white,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0XFF5B4D9D),
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          "assets/muscle.png",
                                          color: Colors.white,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0XFF5B4D9D),
                                        ),
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          "assets/rope.png",
                                          color: Colors.white,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                          ),
                                                );
  }
                        ),
                      ),
                   
                    ],
                    
                  ),
                  
                ),
                
              ),
              
            ],
            
          
      ),
      
    );
  }
}
