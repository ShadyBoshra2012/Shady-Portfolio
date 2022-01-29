import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

// avatar circle
class SkillsAvatar extends StatelessWidget {
  const SkillsAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: AvatarGlow(
        startDelay: Duration(milliseconds: 1000),
        glowColor: Colors.black12,
        endRadius: Responsive.isDesktop(context) ? 120 : 70.0,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: Material(
          elevation: 8.0,
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            backgroundImage: AssetImage("assets/images/shady.jpg"),
            radius: Responsive.isDesktop(context) ? 100.0 : 50.0,
            // shape: BoxShape.circle
          ),
        ),
        shape: BoxShape.circle,
        animate: true,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }
}
