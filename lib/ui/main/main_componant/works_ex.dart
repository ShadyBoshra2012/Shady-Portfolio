import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/main/main_componant/fulltime.dart';
import 'package:portfolio/ui/main/main_componant/parttime.dart';

class Works_EX extends StatelessWidget {
  const Works_EX({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FullTime(),
        PartTime(),
        Divider(),
      ],
    );
  }
}
