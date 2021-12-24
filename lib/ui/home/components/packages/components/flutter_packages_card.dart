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
    return Flexible(
      child: Card(
        elevation: 6,
        child: Container(
          width: 400,
          padding: EdgeInsets.all(defaultPadding),
          color: cardPackageColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  packages.tiltle!,
                  style:
                      const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 23),
                ),
              ),
              Text(packages.date!),
              const SizedBox(height: defaultPadding),
              Text(
                packages.body!,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: defaultPadding),
              const TextButton(
                onPressed: null,
                child:  Text('Read More',
                  style:TextStyle(fontSize: 16,color: primaryColor,),
                  // packages.link!,
                  // maxLines: 4,
                  overflow: TextOverflow.ellipsis,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
