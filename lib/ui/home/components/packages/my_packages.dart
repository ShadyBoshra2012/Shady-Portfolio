import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/FlutterPackages.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/contact_me/contact_me.dart';
import 'package:portfolio/ui/home/components/packages/components/flutter_packages_card.dart';

class Packages extends StatelessWidget {
  const Packages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  flutter_packages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: FlutterPackagesCard(
                      packages: flutter_packages[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
