import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/workout_screens/Lats.dart';
import 'package:gym/workout_screens/abs.dart';
import 'package:gym/workout_screens/arms.dart';
import 'package:gym/workout_screens/biceps.dart';
import 'package:gym/workout_screens/calves.dart';
import 'package:gym/workout_screens/shoulder.dart';
import 'package:gym/workout_screens/triceps.dart';

import '../workout_screens/legs.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  late double imageWidth;
  late double imageHeight;

    @override
  Widget build(BuildContext context) {
      imageWidth = MediaQuery.of(context).size.width * 0.9;
      imageHeight = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('NO ',style: TextStyle(color: Colors.white),),
          Text('PAIN ',style: TextStyle(color: Colors.orange),),
          Text('NO ',style: TextStyle(color: Colors.white),),
          Text('GAIN ',style: TextStyle(color: Colors.teal),),
        ],),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: imageWidth,
            height: imageHeight,
            child: Stack(
              children: [
                Image.asset(
                  'assests/whitebg.png',
                  fit: BoxFit.fill,
                ),
                //for Text buttons
                Positioned(
                  top: imageHeight * 0.21, // Adjust position as needed
                  right: imageWidth * 0.68,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const shoulder(),));
                      },
                      child: const Row(children: [
                        Text('shoulder' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                        Text('>>>>>>>' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),
                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.170, // Adjust position as needed
                  left: imageWidth * 0.57,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const lats(),));

                      },
                      child: const Row(children: [
        
                        Text('<<<<<<<<<<<<<<<<<<<' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),
                        Text('Lats' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.30, // Adjust position as needed
                  left: imageWidth * 0.68,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const biceps(),));
                      },
                      child: const Row(children: [
        
                        Text('<<<<<<<<<<<' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),
                        Text('Biceps' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.37, // Adjust position as needed
                  left: imageWidth * 0.50,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const abs(),));
                      },
                      child: const Row(children: [
                        Text('<<<<<<<<<<<<<<<<<<<<<<<<<<<' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),
                        Text('Abs' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.28, // Adjust position as needed
                  right: imageWidth * 0.73,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const triceps(),));
                      },
                      child: const Row(children: [
                        Text('Triceps' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                        Text('>>>>>' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),

                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.41, // Adjust position as needed
                  right: imageWidth * 0.71,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const arms(),));
                      },
                      child: const Row(children: [
                        Text('Arms' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                        Text('>>>>>>>>>' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),

                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.65, // Adjust position as needed
                  right: imageWidth * 0.65,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const legs(),));
                      },
                      child: const Row(children: [
                        Text('Legs' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),
                        Text('>>>>>>>>>>>>>' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),

                      ],)
                  ),),
                Positioned(
                  top: imageHeight * 0.82, // Adjust position as needed
                  left: imageWidth * 0.58,// Adjust position as needed
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const calves(),));
                      },
                      child: const Row(children: [
                        Text('<<<<<<<<<<<<<<<<' ,style: TextStyle(fontSize: 8 ,color: Colors.black , fontStyle: FontStyle.italic ), ),

                        Text('Calves' ,style: TextStyle(fontSize: 17 ,color: Colors.black , fontStyle: FontStyle.italic  , decoration: TextDecoration.underline,), ),

                      ],)
                  ),),

                //for dots
                Positioned(
                  top: imageHeight * 0.249, // Adjust position as needed
                  left: imageWidth * 0.50,// Adjust position as needed
                  child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.179, // Adjust position as needed
                    left: imageWidth * 0.68,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.048, // Adjust position as needed
                    left: imageWidth * 0.58,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.087, // Adjust position as needed
                    right: imageWidth * 0.68,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.15, // Adjust position as needed
                    right: imageWidth * 0.73,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.28, // Adjust position as needed
                    right: imageWidth * 0.71,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.53, // Adjust position as needed
                    right: imageWidth * 0.62,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),
                Positioned(
                    top: imageHeight * 0.70, // Adjust position as needed
                    left: imageWidth * 0.59,// Adjust position as needed
                    child: const Text('.' , style: TextStyle(fontSize: 100 ,color: Colors.yellow ))),

              ],
            ),
          ),
        ),
      )
    );
  }
}
