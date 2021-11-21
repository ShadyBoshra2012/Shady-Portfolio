
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/data/firebase/my_firestore.dart';
import 'package:portfolio/data/models/Work_experience.dart';

class MyRepository {
  final MyFirestore _myFirestore = MyFirestore(FirebaseFirestore.instance);

  Stream<List<WorkExperience>> getAllWorkExperience() {
    final workExperience = _myFirestore.getAllWorkExperience();
    return workExperience;

  }
}