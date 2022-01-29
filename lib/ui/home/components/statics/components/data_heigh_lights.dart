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
                        width: 160,
                        height: 70,
                        padding: EdgeInsets.all(12),
                        decoration: myBoxDecoration(),
                        child:  Center(
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 12.0),
                                child: Icon(
                                  Icons.contact_mail,
                                  color: primaryColor,
                                  size: 30.0,
                                ),
                              ),
                              Center(
                                child: HeighLight(
                                  counter: AnimatedCounter(
                                    value: 12,
                                    text: "",
                                  ),
                                  label: "Projects",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 70,
                        padding: EdgeInsets.all(12),
                        decoration: myBoxDecoration(),
                        child:  Center(
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.picture_as_pdf,
                                  color: primaryColor,
                                  size: 30.0,
                                ),
                              ),
                              Center(
                                child: HeighLight(
                                  counter: AnimatedCounter(
                                    value: 4,
                                    text: "",
                                  ),
                                  label: "Documents",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 160,
                        height: 70,
                        padding: EdgeInsets.all(12),
                        decoration: myBoxDecoration(),
                        child:  Center(
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 12.0),
                                child: Icon(
                                  Icons.gite,
                                  color: primaryColor,
                                  size: 30.0,
                                ),
                              ),
                              Center(
                                child: HeighLight(
                                  counter: AnimatedCounter(
                                    value: 40,
                                    text: "+",
                                  ),
                                  label: "GitHub\nRepository",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 70,
                        padding: EdgeInsets.all(12),
                        decoration: myBoxDecoration(),
                        child:  Center(
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 12.0),
                                child: Icon(
                                  Icons.backpack_rounded,
                                  color: primaryColor,
                                  size: 30.0,
                                ),
                              ),
                              Center(
                                child: HeighLight(
                                  counter: AnimatedCounter(
                                    value: 10,
                                    text: "",
                                  ),
                                  label: "Packages",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          )
          : Responsive.isTablet(context)
          ?Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Container(
            width: 170,
            height: 70,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.contact_mail,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 12,
                        text: "",
                      ),
                      label: "Projects",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 170,
            height: 70,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.picture_as_pdf,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 4,
                        text: "",
                      ),
                      label: "Documents",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 170,
            height: 70,
            padding: EdgeInsets.all(8),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.gite,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      label: "GitHub\nRepository",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 170,
            height: 70,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.backpack_rounded,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "",
                      ),
                      label: "Packages",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
          :Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Container(
            width: 210,
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.contact_mail,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 12,
                        text: "",
                      ),
                      label: "Projects",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 210,
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.picture_as_pdf,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 4,
                        text: "",
                      ),
                      label: "Documents",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 210,
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.gite,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 40,
                        text: "+",
                      ),
                      label: "GitHub\nRepository",
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 210,
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: myBoxDecoration(),
            child:  Center(
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      Icons.backpack_rounded,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  Center(
                    child: HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "",
                      ),
                      label: "Packages",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        width: 2,
        color: primaryColor,
      ),
    );
  }
}
