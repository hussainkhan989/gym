
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future adddetails(Map<String , dynamic> adddetailsMap, String id) async{
    return await FirebaseFirestore.instance.collection("shoulder").doc(id).set(adddetailsMap);

  }
  Future<Stream<QuerySnapshot>> getalldetails() async{
    return await FirebaseFirestore.instance.collection('shoulder').snapshots();
  }

  Future<Stream<QuerySnapshot>> getdetailsforLats() async{
    return await FirebaseFirestore.instance.collection('lats').snapshots();
  }

  Future<Stream<QuerySnapshot>> getdetailsforabs() async{
    return await FirebaseFirestore.instance.collection('abs').snapshots();
  }
  Future<Stream<QuerySnapshot>> getdetailsforbiceps() async{
    return await FirebaseFirestore.instance.collection('biceps').snapshots();
  }
  Future<Stream<QuerySnapshot>> getdetailsforarms() async{
    return await FirebaseFirestore.instance.collection('forearm').snapshots();
  }
  Future<Stream<QuerySnapshot>> getdetailsfortricep() async{
    return await FirebaseFirestore.instance.collection('triceps').snapshots();
  }
  Future<Stream<QuerySnapshot>> getdetailsforlegs() async{
    return await FirebaseFirestore.instance.collection('legs').snapshots();
  }
  Future<Stream<QuerySnapshot>> getdetailsforcalves() async{
    return await FirebaseFirestore.instance.collection('calves').snapshots();
  }

}