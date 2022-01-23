import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

// style of text in highlights
class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(label!, style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500 ,fontSize: Responsive.isMobile(context)? 12:15)),
      ],
    );
  }
}