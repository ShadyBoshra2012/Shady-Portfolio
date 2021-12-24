



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';

class PowerBy extends StatelessWidget {
  const PowerBy({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Container(
       color: const Color(0xFF24242E),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 // Spacer(),
                 IconButton(
                   onPressed: () {},
                   icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                 ),
                 IconButton(
                   onPressed: () {},
                   icon: SvgPicture.asset("assets/icons/github.svg"),
                 ),
                 IconButton(
                   onPressed: () {},
                   icon: SvgPicture.asset("assets/icons/twitter.svg"),
                 ),
                 // Spacer(),
               ],
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text(
                 "POWER BY eng.MINA MAGID",
                 textAlign: TextAlign.left,
                 style: TextStyle(color: Colors.white60),
               ),
             ),

           ],
         ),
       ),
     );
  }

}