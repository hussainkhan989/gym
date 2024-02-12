import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../database/database.dart';

class shoulder extends StatefulWidget {
  const shoulder({super.key});

  @override
  State<shoulder> createState() => _shoulderState();
}

class _shoulderState extends State<shoulder> {

  DocumentSnapshot? userSnapshot;

  Stream? datastream;

  getalldata() async{
    datastream = await DatabaseMethods().getalldetails();
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
    return StreamBuilder(stream: datastream,
        builder:(context , AsyncSnapshot snapshot){
      return snapshot.hasData
          ? GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: snapshot.data.docs.length,
          itemBuilder: (context , index){
            DocumentSnapshot ds =  snapshot.data.docs[index];
            return  Padding(
              padding: const EdgeInsets.all(8),
              child: Material(
                //color: Colors.teal.shade50,
                elevation: 10.0,
                borderRadius: BorderRadius.circular(9),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(

                    children: [
                      SizedBox(
                          width:200 ,
                        height: 120,
                        child: Image.network(ds['pic'] , fit: BoxFit.cover,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(ds['name'] , style: const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
            );

          }, )
          : SpinKitSpinningLines(color: Colors.black);


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

  Widget buildItem(DocumentSnapshot ds) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Material(
            color: Colors.teal.shade50,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(ds['pic']),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    ds['name'],
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shoulder Workout'),),
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
