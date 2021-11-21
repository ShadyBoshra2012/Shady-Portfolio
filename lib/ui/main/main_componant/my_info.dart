import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Card(
        elevation: 8,
        color: secondaryColor,
        child: Column(
          children: const [
            Spacer(flex: 2),
            CircleAvatar(
              backgroundColor:secondaryColor,
              radius: 50,
              backgroundImage: AssetImage("assets/images/shady.jpg"),
            ),
            Spacer(),
            Text(
              "Shady Boshra Labeeb",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            ),
            Text(
              "Mid Flutter Developer \n Founder of Be Light Tech ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                height: 1.5,
                color: Color(0xFF726F6F),
              ),

            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
