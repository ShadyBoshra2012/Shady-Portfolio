import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/Project.dart';
import 'package:portfolio/responsive.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;


  //TODO error in overflow: TextOverflow.ellipsis
  //error line : A RenderFlex overflowed by 9.2 pixels on the bottom
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Color(0xff336587),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: cardProjectColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundColor:bgColor,
              radius: 30,
              backgroundImage: AssetImage("assets/images/bg.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,8.0,0,0),
              child: Text(
                project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Spacer(),
            Text(
              project.description!,
              maxLines: Responsive.isMobileLarge(context) ? 2 : 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5, color: Colors.black45),
            ),
            Spacer(),
            Text(
              "View Project >>> ",
              maxLines: Responsive.isMobileLarge(context) ? 2 : 2,
              overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color:primaryColor,
                )
            ),
            // ButtonTheme(
            //   minWidth:Responsive.isMobileLarge(context) ? 70.0 : 100.0 ,
            //   height: 50.0,
            //   child: ElevatedButton (
            //     autofocus: true,
            //     onPressed: () {},
            //     style: TextButton.styleFrom(
            //       padding: EdgeInsets.symmetric(
            //           horizontal: defaultPadding * 2,
            //           vertical: defaultPadding),
            //       backgroundColor: primaryColor,
            //     ),
            //     child: Text(
            //        project.source!.name.toString(),
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


