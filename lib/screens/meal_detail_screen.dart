import 'package:flutter/material.dart';
import 'package:meditation_app/meal_class.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;
  const MealDetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFE9E9E9),
      body: CustomScrollView(
slivers: [
  SliverAppBar(
    snap: true,
    floating: true,
backgroundColor: const Color (0XFF200087),
expandedHeight: 300,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
flexibleSpace: FlexibleSpaceBar(
  background: ClipRRect(
    borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
    
    child: Image.asset(
      meal.imagePath,
      fit: BoxFit.cover,
    ),
  ),
),
  ),
  SliverList(delegate:SliverChildListDelegate(
    [
      ListTile(
                title: Text(
                  meal.mealTime.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),
                subtitle: Text(
                  meal.name,
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 30,),
                            Text(
                              "${meal.kiloCaloriesBurnt} kcal",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                     
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                          size: 22,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${meal.timeTaken} mins",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Text(
                    "INGREDIENTS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
              ),
              SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for(int i=0; i<meal.ingredient.length;i++)
                      Padding(
                        padding: 
                      const EdgeInsets.only(bottom: 6),
                      child: Text(
                        meal.ingredient[i],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Text(
                    "PREPARATION",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
              ),
              SizedBox(height: 10,),
               Padding(
                        padding: 
                      const EdgeInsets.only(left: 16,right: 16,bottom: 32),
                      child: Text(
                        meal.preparation,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      ),),
    ]
  ) )
],
      ),
    );
  }
}