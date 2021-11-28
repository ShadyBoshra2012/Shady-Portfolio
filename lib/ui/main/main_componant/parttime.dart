import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class PartTime extends StatelessWidget {
  const PartTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(70, 30, 0, 0),
            child: Text(
              "Part Time",
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
              "EIIN App - Flutter Developer - Feb 2021",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      )
                  : Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 85.0),
            child: Text(
              "Castus App - Freelancer Flutter Developer - Jan 2021",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      )
                  : Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 85.0),
            child: Text(
              "Nashami Project - Flutter Developer Position - Apr 2020 to May 2020",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      )
                  : Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 85.0),
            child: Text(
              "iKoja Project - Flutter/Back-End/Front-End - Apr 2020 to Jun 2020",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      )
                  : Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
            ),
          ),
        ),
      ],
    );
  }
}
