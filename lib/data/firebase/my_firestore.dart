import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/models/Work_experience.dart';

class MyFirestore{
  final FirebaseFirestore _firebaseFirestore;


  MyFirestore(FirebaseFirestore firebaseFirestore): _firebaseFirestore = firebaseFirestore;

  Stream<List<WorkExperience>> getAllWorkExperience() {
    return _firebaseFirestore.collection('workExperience').snapshots().map((snapshot){
      return snapshot.docs.map((e) => WorkExperience.fromSnapshot(e)).toList();
    });
  }

}