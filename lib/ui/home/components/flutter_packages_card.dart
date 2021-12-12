import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/FlutterPackages.dart';

class FlutterPackagesCard extends StatelessWidget {
  const FlutterPackagesCard({
    Key? key,
    required this.packages,
  }) : super(key: key);

  final FlutterPackages packages;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Color(0xc8f1d697),
      child: Container(
        width: 400,
        padding: EdgeInsets.all(defaultPadding),
        color: cardPackageColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              packages.tiltle!,
              style:
                  const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(packages.date!),
            const SizedBox(height: defaultPadding),
            Text(
              packages.body!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.5,
                color: Colors.black45,
              ),
            ),
            Text(
              packages.link!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.5,
                color: Colors.black45,
              ),
            )
          ],
        ),
      ),
    );
  }
}
