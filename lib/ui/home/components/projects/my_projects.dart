import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // headline of page
        Padding(
          padding: const EdgeInsets.fromLTRB(25,12,0,0),
          child: Column(children: [
            Text(
              "MY PROJECTS",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              )
                  : Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const Icon(
              Icons.linear_scale,
              color: primaryColor,
            ),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50,8,50,14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  children: [
                    Text(
                      "FLUTTER",
                      style: Responsive.isDesktop(context)
                          ? Theme.of(context).textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                                color: Colors.black,
                              )
                          : Theme.of(context).textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.black,
                              ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding / 2),
              const Responsive(
                mobile: ProjectsGridView
                  (type: 1,
                  crossAxisCount: 1,
                  childAspectRatio: 1.7,
                ),
                mobileLarge: ProjectsGridView(type: 1,crossAxisCount: 2),
                tablet: ProjectsGridView(type: 1,childAspectRatio: 1.1),
                desktop: ProjectsGridView(type: 1,),
                laptop: ProjectsGridView(type: 1,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  children: [
                    Text(
                      "Android",
                      style: Responsive.isDesktop(context)
                          ? Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.black,
                      )
                          : Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding / 2),
              const Responsive(
                mobile: ProjectsGridView(
                  type: 2,
                  crossAxisCount: 1,
                  childAspectRatio: 1.7,
                ),
                mobileLarge: ProjectsGridView(type: 2,crossAxisCount: 2),
                tablet: ProjectsGridView(type: 2,childAspectRatio: 1.1),
                desktop: ProjectsGridView(type: 2),
                laptop: ProjectsGridView(type: 2,),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {

  const ProjectsGridView({
    Key? key,
    this.type = 1,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int type;
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
      itemBuilder: (context, index) => ProjectCard(type:type,
        project: demo_projects[index],
      ),
    );
  }
}
