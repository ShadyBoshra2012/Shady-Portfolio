import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/heigh_light_item.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // changed when be desktop be one line and be two line if mobile
    return Container(
      child: Responsive.isMobileLarge(context)
          ? Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding*2),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 12,
                          text: "",
                        ),
                        label: "Projects",
                      ),
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 4,
                          text: "",
                        ),
                        label: "Packages",
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 40,
                          text: "+",
                        ),
                        label: "GitHub Repository",
                      ),
                      HeighLight(
                        counter: AnimatedCounter(
                          value: 13,
                          text: "+",
                        ),
                        label: "Documents",
                      ),
                    ],
                  ),
                ],
              ),
          )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeighLight(
            counter: AnimatedCounter(
              value: 12,
              text: "",
            ),
            label: "Projects",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 4,
              text: "",
            ),
            label: "Packages",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 40,
              text: "+",
            ),
            label: "GitHub Repository",
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 13,
              text: "+",
            ),
            label: "Documents",
          ),
        ],
      ),
    );
  }
}
