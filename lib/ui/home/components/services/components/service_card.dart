import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/projects/components/project_card.dart';
import 'package:portfolio/ui/home/components/services/components/hoving.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered) {
      final color = isHovered ? primaryColor : Colors.white;
      return Flexible(
        child: Card(
          elevation: 2,
          shadowColor: Color(0xFF9C9C9C),
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            color: color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/twitter.svg"),
                ),
                Padding(
                  padding: Responsive.isLaptop(context)?const EdgeInsets.fromLTRB(0, 8.0, 0, 0) :const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                  child: Text(
                    project.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: Responsive.isLaptop(context)?12 : 16
                        , fontWeight: FontWeight.w700,color: Colors.black),
                  ),
                ),
                Spacer(),
                Text(
                  project.description!,
                  maxLines: 4,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: Responsive.isLaptop(context)?10 : 16, height:Responsive.isMobile(context)? 1.2: 1.5, color:Colors.black54),
                ),
                Spacer(),

              ],
            ),
          ),
        ),
      );
    });
  }
}