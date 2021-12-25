import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class HumanLanguages extends StatelessWidget {
  const HumanLanguages({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "LANGUAGES",
            style: Responsive.isDesktop(context)
                ? Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.w200,
              color: Colors.black,
            )
                : Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
        ),
        Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("ARABIC",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 13,
                  color: Colors.black,
                )
                    : Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
              Text("ENGLISH",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 13,
                  color: Colors.black,
                )
                    : Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(width:defaultPadding*2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("|        NATIVE",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 13,
                  color: Colors.black54,
                )
                    : Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
              Text("|        INTERMEDIATE",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 13,
                  color: Colors.black54,
                )
                    : Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 10,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],)
      ],
    );
  }
}
