import 'package:flutter/material.dart';

class MeditationDetails extends StatelessWidget {
  const MeditationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 10),
                    child: Image(
                        image: AssetImage(
                      "assets/drawer.png",
                    ))),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search the best for you"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WELCOME..',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'What are you feeling?',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
             child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 120,
              childAspectRatio: 1,
              shrinkWrap: true,
              children: [
                _feelingWidget(title: "loved", image: "assets/heart-eyes.png"),
                _feelingWidget(title: "loved", image: "assets/mocking.png"),
                _feelingWidget(title: "Smirked", image: "assets/smirk.png"),
                _feelingWidget(title: "Happy", image: "assets/emoji.png"),
                _feelingWidget(title: "Stressed", image: "assets/dissapointment.png"),
                _feelingWidget(title: "Confused", image: "assets/confused.png"),
                _feelingWidget(title: "Angry", image: "assets/angry-face.png"),
                _feelingWidget(title: "Blessed", image: "assets/angel.png"),
                _feelingWidget(title: "Sad", image: "assets/sad.png"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Let's Explore..",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 180,
            // width: 200,
            child: ListView(
              padding: EdgeInsets.only(left: 10,right: 20),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                _exploreWidget(
                  description: '16 Sessions',
                title:"Guided \nMeditation" ,
                image: 'assets/images.jpeg',
                ),

                  _exploreWidget(
                    description: '24 Sessions',
                title:"Mindfulness \nMeditation." ,
                image:'assets/images (1).jpeg',
                ),
                
                 _exploreWidget(
                    description: '20 Sessions',
                title:"Visualization" ,
                image:'assets/images (2).jpeg',
                ),
                 _exploreWidget(
                    description: '22 Sessions',
                title:"Breathing\nMeditation" ,
                image:'assets/images (3).jpeg',
                ),

                  _exploreWidget(
                    description: '26 Sessions',
                title: 'Focus\nEnhancement',
                image:'assets/images (4).jpeg' ,
                ),
                 _exploreWidget(
                    description: '30 Sessions',
                title:" Relax \nand Sleep  " ,
                image:'assets/images (5).jpeg',
                ),
                 _exploreWidget(
                    description: '28 Sessions',
                title:"Mantra \nmeditation" ,
                image:'assets/images (6).jpeg',
                ),
                 _exploreWidget(
                    description: '12 Sessions',
                title:"Yoga" ,
                image:'assets/yog.jpg',
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
        ]),
      ),
    );
  }
}

class _exploreWidget extends StatelessWidget {
  final String description;
  final String title;
  final String image;
  const _exploreWidget({
    super.key,
    required this.description,
    required this.title,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Stack(
        children: [
        Image.asset(image),
          Positioned(
            top: 10,
            left: 10,
              child: Text(
            title,style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),
          )),
          Positioned(
            bottom: 10,
            left: 10,
              child: Text(
            description,style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w700),
          ))
        ],
      ),
    );
  }
}

class _feelingWidget extends StatelessWidget {
  final String title;
  final String image;
  const _feelingWidget({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Text("hello "),
            SizedBox(height: 10,),


          Image.asset(
            image,
            height: 60,
            width: 50,
          ),
          Text(title),
        ],
      ),
    );
  }
}
