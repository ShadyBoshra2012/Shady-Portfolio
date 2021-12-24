import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/my_work_ex/components/fulltime.dart';
import 'package:portfolio/ui/home/components/my_work_ex/components/parttime.dart';

class Works_EX extends StatelessWidget {
  const Works_EX({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellowAccent,
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // headline of page
            Padding(
              padding: const EdgeInsets.fromLTRB(25,14,0,4),
              child: Row (
                children: [
                  const Icon(
                    Icons.work,
                    color: primaryColor,
                    size: 35,
                  ),
                  Text(
                  "  Work Experiences",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline2!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                  )
                      : Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.black,
                  ),
                ),
              ],),
            ),
            FullTime(),
            PartTime(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
