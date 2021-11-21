import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class WorkExperience extends Equatable{
  final String jobName;
  final String jobDate;
  final int jobType;


  const WorkExperience({required this.jobName, required this.jobDate, required this.jobType});

  static WorkExperience fromSnapshot(DocumentSnapshot snapshot){
    WorkExperience workExperience = WorkExperience(
        jobName: snapshot['jobName'],
        jobDate: snapshot['jobDate'],
        jobType: snapshot['jobType'],
    );

    return workExperience;
  }

  static List<WorkExperience> works= [
    const WorkExperience(jobName: 'flutter', jobDate: 'Jul 2020', jobType: 1),
    const WorkExperience(jobName: 'android', jobDate: 'Jul 2021', jobType: 2),
  ];


  @override
  List<Object?> get props =>[jobName,jobDate,jobType];
  // WorkExperience.fromJson(Map<String , dynamic> json){
  //   jobName= json["jobName"];
  //   jobDate= json["jobDate"];
  //   jobType= json["jobType"];
  // }
}