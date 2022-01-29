import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/services/components/hoving.dart';

class LastWorkCard extends StatelessWidget {
  const LastWorkCard({
    Key? key,
    required this.project, required this.type,
  }) : super(key: key);

  final Project project;
  final int type;
  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered) {
      final color = isHovered ? withColor : noColor;
      final color2 = isHovered ? Colors.white : noColor;
      return Card(
        elevation: 2,
        shadowColor: Color(0xFF9C9C9C),
        child: Stack(
            children: [
          Image.asset("assets/images/bg.jpeg", height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width),
          Container(
            color: color,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8.0, 0,8.0),
                    child: Text(
                      project.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: Responsive.isLaptop(context)?12 : 16
                          , fontWeight: FontWeight.w700,color: color2),
                    ),
                  ),
                  Text(
                    type ==1?"FLUTTER":"ANDROID",
                    style: TextStyle(fontSize: Responsive.isLaptop(context)?10 : 16, height:Responsive.isMobile(context)? 1.2: 1.5, color: color2),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ]),
      );
    });
  }
}
