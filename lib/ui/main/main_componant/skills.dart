import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_progress_indicator.dart';
import 'package:portfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        const Center(
          // padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 18.0, 0, 14.0),
          child: Text(
            "Environments",
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.9,
                    label: "Flutter",
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.75,
                    label: "Android",
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.55,
                    label: "IOS",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.55,
                    label: "Web",
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.75,
                    label: "WPF",
                  ),
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.75,
                    label: "Git",
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
