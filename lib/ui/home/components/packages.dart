import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/FlutterPackages.dart';
import 'package:portfolio/ui/home/components/flutter_packages_card.dart';

class Packages extends StatelessWidget {
  const Packages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flutter Packages",
            style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
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
    );
  }
}

