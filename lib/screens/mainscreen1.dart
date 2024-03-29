import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gym/screens/Exercise_selection_screen.dart';
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
    int _selectedIndex = 0;
    imageWidth = MediaQuery
        .of(context)
        .size
        .width * 0.9;
    imageHeight = MediaQuery
        .of(context)
        .size
        .height * 0.7;

    List<IconData>iconss = [
       Icons.home,
      Icons.sports_sharp,
      Icons.access_alarm,
      Icons.nat
    ];
    return Scaffold(

      bottomSheet: AnimatedBottomNavigationBar(
          backgroundColor: Colors.blue.shade600,

          elevation: 2,
          splashColor: Colors.amber,
          icons: iconss,
          activeIndex: _selectedIndex ,
          leftCornerRadius: 42,
          rightCornerRadius: 42,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.sharpEdge,
          onTap:  _onItemTapped ),
      appBar: AppBar(

        elevation: 2.0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'G  Y M ',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'F L E X ',
              style: TextStyle(color: Colors.black),
            ),

          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: imageWidth,
                height: imageHeight,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assests/whitebg.png',
                      fit: BoxFit.fill,
                    ),
                    //for Text buttons
                    Positioned(
                      top: imageHeight * 0.21, // Adjust position as needed
                      right: imageWidth * 0.68, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const shoulder(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                'shoulder',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '>>>>>>>',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.170, // Adjust position as needed
                      left: imageWidth * 0.57, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const lats(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                '<<<<<<<<<<<<<<<<<<<',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Lats',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.30, // Adjust position as needed
                      left: imageWidth * 0.68, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const biceps(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                '<<<<<<<<<<<',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Biceps',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.37, // Adjust position as needed
                      left: imageWidth * 0.50, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const abs(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                '<<<<<<<<<<<<<<<<<<<<<<<<<<<',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Abs',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.28, // Adjust position as needed
                      right: imageWidth * 0.73, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const tricep(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Triceps',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '>>>>>',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.41, // Adjust position as needed
                      right: imageWidth * 0.71, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const arms(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Arms',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '>>>>>>>>>',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.65, // Adjust position as needed
                      right: imageWidth * 0.65, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const legs(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Legs',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                '>>>>>>>>>>>>>',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: imageHeight * 0.82, // Adjust position as needed
                      left: imageWidth * 0.58, // Adjust position as needed
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const calves(),
                                ));
                          },
                          child: const Row(
                            children: [
                              Text(
                                '<<<<<<<<<<<<<<<<',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'Calves',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          )),
                    ),

                    //for dots
                    Positioned(
                        top: imageHeight * 0.249, // Adjust position as needed
                        left: imageWidth * 0.50, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.179, // Adjust position as needed
                        left: imageWidth * 0.68, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.048, // Adjust position as needed
                        left: imageWidth * 0.58, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.087, // Adjust position as needed
                        right: imageWidth * 0.68, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.15, // Adjust position as needed
                        right: imageWidth * 0.73, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.28, // Adjust position as needed
                        right: imageWidth * 0.71, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.53, // Adjust position as needed
                        right: imageWidth * 0.62, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                    Positioned(
                        top: imageHeight * 0.70, // Adjust position as needed
                        left: imageWidth * 0.59, // Adjust position as needed
                        child: const Text('.',
                            style: TextStyle(
                                fontSize: 100, color: Colors.yellow))),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

      /*bottomNavigationBar: BottomNavigationBar(

        //fixedColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
            //backgroundColor: Colors.purple,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics),
            label: 'Add Items',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Sales/profit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Inventory',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,

      ),*/
    );

  }
  void _onItemTapped(int index) {
    setState(() {
      int _selectedIndex = index;
      // Add your logic based on the selected index here
      switch (index) {
        case 0:
        // Handle Home click
          break;
        case 1:
        // Handle Business click
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  exselection(),));
         // Navigator.push(context, MaterialPageRoute(builder: (context) => additem(),));
          break;
        case 2:
        // Handle School click
          //Navigator.push(context, MaterialPageRoute(builder: (context) => sales(),));
          break;
        case 3:
        // Handle School click
          //Navigator.push(context, MaterialPageRoute(builder: (context) => ItemListScreen(),));
          break;

      //case 3:
      // Handle School click
      //Navigator.push(context, MaterialPageRoute(builder: (context) => SalesList(),));
      //break;
      }
    });
  }
}
