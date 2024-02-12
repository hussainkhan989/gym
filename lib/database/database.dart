
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future adddetails(Map<String , dynamic> adddetailsMap, String id) async{
    return await FirebaseFirestore.instance.collection("shoulder").doc(id).set(adddetailsMap);

  }
  Future<Stream<QuerySnapshot>> getalldetails() async{
    return await FirebaseFirestore.instance.collection('shoulder').snapshots();
  }
}