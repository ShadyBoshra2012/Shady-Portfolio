import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class FullTime extends StatelessWidget {
  const FullTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children:  [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Text(
                  "Full Time",
                  style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                )
                    : Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.bold,
                    fontSize: 25,
                  color: Colors.black,
                ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 85.0),
                child: Text(
                  "GrandTK - Flutter Developer Position - May 2020 to Nov 2020",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color:Colors.black54,
                  )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color:Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                      children: [
                        Container(padding:const EdgeInsets.fromLTRB(4,4,4,0),
                            child: Icon(Icons.circle,size: Responsive.isDesktop(context)?10:8,)),
                        Text(
                          "Multi-Vendors App",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            height: 1.5,
                            color: Color(0xFF726F6F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:4.0),
                    child: Row(
                      // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                      children: [
                        Container(padding:const EdgeInsets.fromLTRB(4,4,4,0),
                            child: Icon(Icons.circle,size: Responsive.isDesktop(context)?10:8,)),
                        Text(
                          "Custom Android Launcher",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            height: 1.5,
                            color: Color(0xFF726F6F),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                      children: [
                        Container(padding:const EdgeInsets.fromLTRB(4,4,4,0),
                            child: Icon(Icons.circle,size: Responsive.isDesktop(context)?10:8,)),
                        Text(
                          "Buildings (Aqarat), Sale and Rent",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            height: 1.5,
                            color: Color(0xFF726F6F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
    );
  }
}
