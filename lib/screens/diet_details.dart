import 'package:flutter/material.dart';
import 'package:meditation_app/meal_class.dart';
import 'package:intl/intl.dart';
import 'package:meditation_app/screens/meal_detail_screen.dart';
import 'package:vector_math/vector_math_64.dart' as math;
class DietDetails extends StatelessWidget {

  const DietDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    final today= DateTime.now();
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
   
    body: Stack(
        children: [
          Positioned(
             top:0,
            height: height * 0.45,
            left: 0,
            right: 0,
            child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(40),

          
        ),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 25,
          left: 25,right: 10,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title:  Text(
            "${ DateFormat("EEEE").format(today)},${DateFormat("d MMMM").format(today)}",style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,

            ),
                    
                  
               ),
                subtitle: Text("Hello David",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
                trailing: ClipOval(child: Image.asset("assets/profile.png")),
              ),

              Expanded(
                child: Row(
                  
                  children: [
                    _RadialProgress(
                      height:width * 0.3, 
                    width: width * 0.3 ,
                    progress: 0.7,
                     ),
                     SizedBox(width: 20,),
                     Column(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                _IngredientProgress(ingredient: "Proteins", progressColor: Colors.green, leftAmount: 72, progress: 0.3,width: width * 0.3, ),
                _IngredientProgress(ingredient: "Carbs", progressColor: Colors.red, leftAmount: 252, progress: 0.2,width: width * 0.3, ),
                _IngredientProgress(ingredient: "Fats", progressColor: Colors.yellow, leftAmount:61 , progress: 0.1,width: width * 0.3, ),
                      ],
                     )
                  ],
                ),
              )
            ],
          )
        ),
            ),
          ),
         
        Positioned(
          top:height * 0.45,
            left: 0,
            right: 0,
          child: Container(
        padding: EdgeInsets.all(10),
            height: height * .9 ,
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding:EdgeInsets.only(
              bottom: 8,
              left: 25,
              right: 10,
            ),
            child: Text(
              "MEALS FOR TODAY",
              style: TextStyle(
                color: Color.fromARGB(220, 105, 104, 104),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
             ),
             Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
        for(int i=0; i< meals.length; i++)
        _MealCard(meal: meals[i]),
                  ],
                ),
              )
             ),
             SizedBox(height: 10,),
              Expanded(
             child:Container(
                  
                  color: const Color.fromARGB(255, 248, 249, 250),
                ),
              )
            
        
        ],
            ),
          ),
        ),
        
        ],
        ),
   
    );
  }
}




class _IngredientProgress extends StatelessWidget {
  final String ingredient;
  final Color progressColor;
  final int leftAmount;
  final double progress,width;
  const _IngredientProgress({super.key, required this.ingredient, required this.progressColor, required this.leftAmount, required this.progress, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start ,
      children: [
        Text(ingredient.toUpperCase(),
        style: TextStyle(fontSize: 14,fontWeight:FontWeight.w700 ),),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
             Container(
                height: 10,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.black12,
                ),
               ),
                 Container(
                height: 10,
                width: width * progress,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: progressColor,
                ),
               ),
              ]
            ),
            SizedBox(width: 10,),
            Text("${leftAmount}g left"),

          ],
        )
      ],
    );
  }
}





class _RadialProgress extends StatelessWidget {
  final double height,width,progress;
  const _RadialProgress({super.key, required this.height, required this.width, required this.progress});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: 0.7),
      child: Container(
        height: height,
        width: width,
       child:  Center( 
           child: RichText(
            text: TextSpan(children: [
              TextSpan(text: "1731",
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: const Color(0xFF200087))),
              TextSpan(text:"\n"),
              TextSpan(text: "Kcal",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: const Color(0xFF200087))),
            ]
            ),
           ),
         ),
       ),
     
    );
  }
}



class _RadialPainter extends CustomPainter{
  final double progress;

  _RadialPainter({ required this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =Paint()
    ..strokeWidth = 10
    ..color = Color(0xFF200087)
    ..style=PaintingStyle.stroke
    ..strokeCap =StrokeCap.round;

    Offset center=Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;
    // canvas.drawCircle(center,size.width / 2 , paint);
    canvas.drawArc( Rect.fromCircle
    (center: center, radius:  size.width/2) ,
    math.radians(-90),math.radians(-relativeProgress), false, paint);
 
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

   return true;
  }

}






class _MealCard extends StatelessWidget {
  final Meal meal;
  const _MealCard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return  Container(
margin: EdgeInsets.only(bottom: 10,right: 20),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>MealDetailScreen(meal: meal)));
        },
        child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
        Flexible
        (fit: FlexFit.tight,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
            meal.imagePath,
            width: 150,
            fit: BoxFit.fill,
            ),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
        SizedBox(height: 5,),
            Text(meal.mealTime,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color.fromARGB(255, 120, 119, 119)),),
            Text(meal.name,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.black),),
            Text("${meal.kiloCaloriesBurnt} kcal"),
            Row(
        children: [
          Icon(Icons.access_time,color: Colors.black26,size: 18,),
          SizedBox(width: 5,),
          Text(meal.timeTaken),
        ],
            ),
            SizedBox(height: 10,),
             ],
            ),
          ))
          ],
        ),
        ),
      ),
    );
  }
}