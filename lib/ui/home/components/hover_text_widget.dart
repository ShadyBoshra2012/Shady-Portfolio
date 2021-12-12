import 'package:flutter/material.dart';

class HoverText extends StatefulWidget {

  final String text;
  final void Function()? onTap;
  
  HoverText({required this.text, required this.onTap });

  @override
  _HoverTextState createState() => _HoverTextState();
}

// style to text when be on text be gray and be white when clicked
class _HoverTextState extends State<HoverText> {

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
     textColor= Colors.grey;
     _exitCounter++;
   });
 }

  void _updateLocation(PointerEvent details){
   setState(() {
     textColor= Colors.white;
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
        onTap: widget.onTap,
        child: Text(widget.text,style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
        ),),
      ),
    );
  }
}