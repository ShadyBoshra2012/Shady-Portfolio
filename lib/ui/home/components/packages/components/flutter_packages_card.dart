import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/FlutterPackages.dart';
import 'package:portfolio/responsive.dart';

class FlutterPackagesCard extends StatelessWidget {
  const FlutterPackagesCard({
    Key? key,
    required this.packages,
  }) : super(key: key);

  final FlutterPackages packages;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        height: double.infinity,
        width: 400,
        padding: EdgeInsets.all(defaultPadding),
        color: cardPackageColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: Responsive.isLaptop(context)?const EdgeInsets.fromLTRB(0, 4.0, 0, 0) :const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: Text(
                packages.tiltle!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: Responsive.isLaptop(context)?12 : 16
                    , fontWeight: FontWeight.w700,color: Colors.black),
              ),
            ),
            Padding(
              padding: Responsive.isLaptop(context)?const EdgeInsets.fromLTRB(0, 4.0, 0, 0) :const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: Text(
                packages.date!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: Responsive.isLaptop(context)?10 : 12
                    , fontWeight: FontWeight.normal,color: Colors.black54),
              ),
            ),
            Spacer(),
            Text(
              packages.body!,
              maxLines: Responsive.isMobile(context) ? 1 :
              Responsive.isTablet(context) ? 2 :3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: Responsive.isLaptop(context)?10 : 16, height:Responsive.isMobile(context)? 1.2: 1.5, color: Colors.black54),
            ),
            Spacer(),
             Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: null,
                child:  Text('Read More',
                  style:TextStyle(fontSize: Responsive.isLaptop(context)?12 : 14,color: primaryColor,),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
