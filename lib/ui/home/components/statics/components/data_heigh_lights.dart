import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_counter.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/statics/components/heigh_light_item.dart';

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
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: myBoxDecoration(),
                        child:  HeighLight(
                          counter: AnimatedCounter(
                            value: 12,
                            text: "",
                          ),
                          label: "Projects",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: myBoxDecoration(),
                        child:  HeighLight(
                          counter: AnimatedCounter(
                            value: 13,
                            text: "+",
                          ),
                          label: "Documents",
                        ),
                      ),



                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: myBoxDecoration(),
                        child:  HeighLight(
                          counter: AnimatedCounter(
                            value: 40,
                            text: "+",
                          ),
                          label: "GitHub Repository",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: myBoxDecoration(),
                        child:  HeighLight(
                          counter: AnimatedCounter(
                            value: 4,
                            text: "",
                          ),
                          label: "Packages",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Container(
            padding: EdgeInsets.all(8),
            decoration: myBoxDecoration(),
            child:  HeighLight(
              counter: AnimatedCounter(
                value: 12,
                text: "",
              ),
              label: "Projects",
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: myBoxDecoration(),
            child:  HeighLight(
              counter: AnimatedCounter(
                value: 4,
                text: "",
              ),
              label: "Packages",
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: myBoxDecoration(),
            child:  HeighLight(
              counter: AnimatedCounter(
                value: 40,
                text: "+",
              ),
              label: "GitHub Repository",
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: myBoxDecoration(),
            child:  HeighLight(
              counter: AnimatedCounter(
                value: 13,
                text: "+",
              ),
              label: "Documents",
            ),
          ),
        ],
      ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.white70,
      border: Border.all(
        width: 1,
        color: primaryColor,
      ),
    );
  }
}
