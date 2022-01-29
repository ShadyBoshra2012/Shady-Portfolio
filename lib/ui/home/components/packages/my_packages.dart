import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/FlutterPackages.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/packages/components/flutter_packages_card.dart';

class Packages extends StatelessWidget {
  const Packages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // headline of page
        Padding(
          padding: const EdgeInsets.fromLTRB(25,12,0,0),
          child: Column(children: [
            Text(
              "FLUTTER PACKAGES",
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
        const SizedBox(height: defaultPadding),
        const Padding(
          padding: EdgeInsets.fromLTRB(50,8,50,14),
          child: Responsive(
            mobile: ProjectsGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectsGridView(crossAxisCount: 2),
            tablet: ProjectsGridView(childAspectRatio: 1.1),
            desktop: ProjectsGridView(),
            laptop: ProjectsGridView(),
          ),
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
      itemCount: flutter_packages.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => FlutterPackagesCard(
          packages: flutter_packages[index],
      ),
    );
  }
}

