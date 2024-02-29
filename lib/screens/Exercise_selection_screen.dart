import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/util/util.dart';
import 'package:gym/workout_screens/Lats.dart';
import 'package:gym/workout_screens/abs.dart';
import 'package:gym/workout_screens/arms.dart';
import 'package:gym/workout_screens/biceps.dart';
import 'package:gym/workout_screens/calves.dart';
import 'package:gym/workout_screens/legs.dart';
import 'package:gym/workout_screens/shoulder.dart';
import 'package:gym/workout_screens/triceps.dart';

class exselection extends StatefulWidget {
  const exselection({Key? key}) : super(key: key);

  @override
  State<exselection> createState() => _exselectionState();
}

class _exselectionState extends State<exselection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select your Exercise'),
      ),
      body: ListView(
        children: [
         util.cards('assests/Ready Cards/Bicep.png', (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => biceps(),));
         } ),
          util.cards('assests/Ready Cards/Triceps.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => tricep(),));
          } ),
          util.cards('assests/Ready Cards/Chest.png', (){} ),
          util.cards('assests/Ready Cards/back.png', (){} ),
          util.cards('assests/Ready Cards/Calves.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => calves(),));
          } ),
          util.cards('assests/Ready Cards/Forearm.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => arms(),));
          } ),
          util.cards('assests/Ready Cards/Lats.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => lats(),));
          } ),
          util.cards('assests/Ready Cards/Legs.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => legs(),));
          } ),
          util.cards('assests/Ready Cards/Shoulder.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => shoulder(),));
          } ),
          util.cards('assests/Ready Cards/Abs.png', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => abs(),));
          } ),





        ],
      )
    );
  }
}
