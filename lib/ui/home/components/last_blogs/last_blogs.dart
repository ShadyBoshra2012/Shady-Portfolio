import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/last_blogs/components/last_blog_card.dart';

class LastBlogs extends StatelessWidget {
  const LastBlogs({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,12,0,0),
      child: Container(
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // headline of page
            Padding(
              padding: const EdgeInsets.fromLTRB(25,12,0,0),
              child: Column(children: [
                Text(
                  "LAST BLOGS",
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
              padding: const EdgeInsets.fromLTRB(50,16,50,25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Responsive(
                    mobile: ProjectsGridView
                      (
                      crossAxisCount: 1,
                      childAspectRatio: 1.7,
                    ),
                    mobileLarge: ProjectsGridView(crossAxisCount: 2),
                    tablet: ProjectsGridView(childAspectRatio: 1.1),
                    desktop: ProjectsGridView(),
                    laptop: ProjectsGridView(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectsGridView extends StatelessWidget {

  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3, this.type = 1,
  }) : super(key: key);


  final int type;
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        // childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => LastBlogCard(
          project: demo_projects[index],type: type
      ),
    );
  }
}

