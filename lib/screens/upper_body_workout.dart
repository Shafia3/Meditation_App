class UpperBodyWorkout{
final String imagePath,name,instruction;
UpperBodyWorkout({ required this.imagePath,required this.name,required this.instruction,});

}
final upperBody=[
  [
  UpperBodyWorkout(
    imagePath: "assets/chest.png",
     name: 'Bench Press',
     instruction: "3 sets - 6 repitions",
     ),

     UpperBodyWorkout(
      imagePath: "assets/chest.png",
       name: 'Dumbell Press', 
       instruction: "4 sets - 6 repitions"
       ),

       UpperBodyWorkout(
        imagePath: "assets/chest.png",
        name: "Dips", 
        instruction: "2 sets - 10 repitions",
        ),
],
[
UpperBodyWorkout(
  imagePath: "assets/back.png",
   name: "Pull ups", 
   instruction: "2 sets - 8 repitions",
   ),

   UpperBodyWorkout(
  imagePath:"assets/back.png",
   name: "DeadLift", 
   instruction: "2 sets - 4 repitions"
   ),

   UpperBodyWorkout(
  imagePath: "assets/back.png",
   name: 'Lat Pulldown', 
   instruction: "4 sets -6 repitions"
   ),

],

[
UpperBodyWorkout(
  imagePath: "assets/muscle.png",
   name: "Dumbell Curl", 
   instruction: "4 sets - 6 repitions",
   ),

   UpperBodyWorkout(
  imagePath:"assets/muscle.png",
   name: "Barbell Curl", 
   instruction: "2 sets - 6 repitions"
   ),

   UpperBodyWorkout(
  imagePath: "assets/muscle.png",
   name: 'Cable Curl', 
   instruction: "4 sets -6 repitions"
   ),

]



];
