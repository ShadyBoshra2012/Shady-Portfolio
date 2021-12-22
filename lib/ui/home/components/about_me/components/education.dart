import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0,25,25,10),
              child: Text(
                "EDUCATION",
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
            Text(
              "NATIONAL EGYPTIAN E-LEARNING UNIVERSITY",
              textAlign: TextAlign.center,
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline6!.copyWith(
                        // fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      )
                  : Theme.of(context).textTheme.headline6!.copyWith(
                        // fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black,
                      ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,4,0,4),
              child: Text(
                "B.A in Information Technology",
                textAlign: TextAlign.center,
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline6!.copyWith(
                  // fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                )
                    : Theme.of(context).textTheme.headline6!.copyWith(
                  // fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text("GPA",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                        )
                            : Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("GRADUATED",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                        )
                            : Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
                const SizedBox(width:defaultPadding*2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      child: Text("|        3.32",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 16,
                          color: Colors.grey,
                        )
                            : Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("|        2020",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 16,
                          color: Colors.grey,
                        )
                            : Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ],
            ),
          ],
    );
  }
}
