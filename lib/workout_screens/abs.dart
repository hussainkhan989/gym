import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gym/screens/exersice_display_screen.dart';

import '../database/database.dart';

class abs extends StatefulWidget {
  const abs({super.key});

  @override
  State<abs> createState() => _absState();
}

class _absState extends State<abs> {

  DocumentSnapshot? userSnapshot;

  Stream? datastream;

  getalldata() async{
    datastream = await DatabaseMethods().getdetailsforabs();
    setState(() {

    });
  }
  @override
  void initState() {
    getalldata();
    super.initState();
  }
  @override
  void dispose() {
    getalldata();
    super.dispose();
  }

  Widget gymwidget(){
    return StreamBuilder(
        stream: datastream,
        builder:(context , AsyncSnapshot snapshot){
          return snapshot.hasData
              ? ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context , index){
              DocumentSnapshot ds =  snapshot.data.docs[index];
              final String videourl = ds['video'];
              final String description = ds['description'];
              final String gif = ds['gif'];
              final String name = ds['name'];


              return  Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ExerciseDisplayScreen(videourl: videourl , gif: gif, description: description, name: name,),));
                  },
                  child: Card(
                    // color: Colors.teal.shade50,
                    elevation: 1.0,
                    //borderRadius: BorderRadius.circular(9),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                              width:double.infinity ,
                              height: 200,
                              child: Image.network(ds['pic'] , fit: BoxFit.cover,)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(ds['name'] , style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Row(children: [
                              SizedBox(width: 10,), Text('Level'),SizedBox(width: 10,),Text('•'),SizedBox(width: 10,),Text('12 Minutes'),SizedBox(width: 10,),Text('•'),SizedBox(width: 10,),Text('123 Cal')
                            ],),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );

            }, )
              : const SpinKitSpinningLines(color: Colors.black);


        }

    );
  }
  /*Widget gymwidget(){
    return StreamBuilder(
      stream: datastream,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          List<Widget> items = [];
          for (int i = 0; i < snapshot.data.docs.length; i += 2) {
            if (i + 1 < snapshot.data.docs.length) {
              items.add(
                Row(
                  children: [
                    buildItem(snapshot.data.docs[i]),
                    buildItem(snapshot.data.docs[i + 1]),
                  ],
                ),
              );
            } else {
              items.add(buildItem(snapshot.data.docs[i]));
            }
          }
          return ListView(
            children: items,
          );
        } else {
          return SpinKitSpinningLines(color: Colors.black);
        }
      },
    );
  }*/





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Abs Workout'),),
        body: Container(
          //color: Colors.black,
          child: Column(
            children: [
              Expanded(child:
              gymwidget())
            ],
          ),
        )

    );

  }}
