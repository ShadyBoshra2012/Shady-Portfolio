import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class FrontEnd extends StatelessWidget {
  const FrontEnd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isTablet(context)? EdgeInsets.all(20.0):EdgeInsets.all(45.0),
      child: Card(
        color: primaryColor,
        elevation: 6,
        child: Padding(
          padding: !Responsive.isTablet(context)? EdgeInsets.fromLTRB(55,12,55,12): EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(),
              Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: Text(
                  "Front-End",
                  style: Responsive.isTablet(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                ),
              ),
              FrontEndText(text: "ReactJS"),
              FrontEndText(text: "HTML - CSS"),
              FrontEndText(text: "Bootstrap"),
              FrontEndText(text: "jQuery"),
              FrontEndText(text: "XML"),
            ],
          ),
        ),
      ),
    );
  }
}

// style of text in frontend data and start with icon check
class FrontEndText extends StatelessWidget {
  const FrontEndText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.check,
            size: Responsive.isDesktop(context) ? 50 : 20,
            color: Colors.white,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: Responsive.isDesktop(context)
                    ? 30
                    : Responsive.isTablet(context)
                        ? 13
                        : 10,
              )),
        ],
      ),
    );
  }
}
