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
      elevation: 4,
      shadowColor: Color(0xc8f1d697),
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
              maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5, color: Colors.black45),
            ),
            Spacer(),
            ElevatedButton (
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 2,
                    vertical: defaultPadding),
                backgroundColor: primaryColor,
              ),
              child: Text(
                  projectType(project.type!),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


 projectType(int type) {
  switch (type) {
    case 1:
      return "Android";
    case 2:
      return "IOS";
    case 3:
      return "Website";
    case 4 :
      return "View Link";
    case 0:
      return "Read More >>";
    case 5:
      return "Read More >>";
    case 6:
      return "Read More >>";
    case 7:
      return "Read More >>";
  }
}