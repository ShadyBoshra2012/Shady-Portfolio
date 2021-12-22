import 'package:flutter/material.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FullTime(),
          PartTime(),
          Divider(),
        ],
      ),
    );
  }
}
