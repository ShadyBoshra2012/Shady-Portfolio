import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
                  child: Icon(
                    Icons.animation,
                    size: Responsive.isDesktop(context) ? 60 : 35,
                  )),
              Text(
                "My Projects >>>> ",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffd5bc35),
                        )
                    : Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffd5bc35),
                        ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                  child: Icon(
                    Icons.adjust_outlined,
                    size: Responsive.isDesktop(context) ? 40 : 20,
                  )),
              Text(
                "FLUTTER",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xff2489de),
                        )
                    : Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff2489de),
                        ),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
