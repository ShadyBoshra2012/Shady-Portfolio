import 'package:flutter/material.dart';

class buildSocialButton extends StatelessWidget {
   const buildSocialButton({
    Key? key,
     required this.image,
  }) : super(key: key);

  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image!),
        ),
        border: Border.all(
          color: Color(0xff50545d),
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
