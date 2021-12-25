import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class HoverIconButton extends StatefulWidget {

  final IconData iconText;
  final String text;
  final void Function()? onTap;
  HoverIconButton({required this.text, required this.onTap ,required this.iconText,});

  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();
}

// style to text when be on text be gray and be white when clicked
class _HoverIconButtonState extends State<HoverIconButton> {

  Color textColor= Colors.black;
  int _enterCounter=0;
  int _exitCounter=0;
  double x=0.0;
  double y=0.0;



 void _incrementEnter(PointerEvent details){
   setState(() {
     _enterCounter++;
   });
 }
  void _incrementExit(PointerEvent details){
   setState(() {
     textColor= Colors.black;
     _exitCounter++;
   });
 }

  void _updateLocation(PointerEvent details){
   setState(() {
     textColor= primaryColor;
     x=details.position.dx;
     y=details.position.dy;
   });
 }




@override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover:_updateLocation ,
      onExit:_incrementExit ,
      child: GestureDetector(
        child: Column(
          children: [
            Icon(widget.iconText,color: textColor),
            const SizedBox(height: defaultPadding/3),
            Text(widget.text,style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 12
            ),),
          ],
        ),
      ),
    );
  }
}