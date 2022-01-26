



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';

class PowerBy extends StatelessWidget {
  const PowerBy({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
       color: const Color(0xFF24242E),
       child: const Padding(
         padding: EdgeInsets.all(8.0),
         child:  Padding(
           padding: EdgeInsets.all(8.0),
           child: Text(
             "POWER BY MINA MAGID",
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.white60),
           ),
         ),

       ),
     );
  }

}