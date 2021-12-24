import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/about_me/components/education.dart';
import 'package:portfolio/ui/home/components/about_me/components/human_languages.dart';
import 'package:portfolio/ui/home/components/about_me/components/personal_information.dart';

class MyContactData extends StatelessWidget {
  const MyContactData({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,0,15,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children:[
                  const Icon(Icons.location_on_outlined,color: primaryColor,size: 35,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text('Our Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Text('shady2022@gmail.com',style: TextStyle(color: Colors.black),),

                ]),
                  )],
              ),
            ),
          ),
          SizedBox(height: 8),
          Card(color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children:[
                  const Icon(Icons.location_on_outlined,color: primaryColor,size: 35,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text('Our Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Text('shady2022@gmail.com',style: TextStyle(color: Colors.black),),

                        ]),
                  )],
              ),
            ),
          ),
          SizedBox(height: 8),
          Card(color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children:[
                  const Icon(Icons.location_on_outlined,color: primaryColor,size: 35,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text('Our Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Text('shady2022@gmail.com',style: TextStyle(color: Colors.black),),

                        ]),
                  )],
              ),
            ),
          ),
          SizedBox(height: 8),
          Card(color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children:[
                  const Icon(Icons.location_on_outlined,color: primaryColor,size: 35,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text('Our Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Text('shady2022@gmail.com',style: TextStyle(color: Colors.black),),

                        ]),
                  )],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
