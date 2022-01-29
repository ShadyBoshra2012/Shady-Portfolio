import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/testimonials/components/slider_carousel.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
  }) : super(key: key);

  // in this class work experience, environments
  @override
  Widget build(BuildContext context) {
    final carousel = SliderCarousel();

    // title of skills and change front size when be mobile or tablet
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(25,12,0,0),
          child: Column(children: [
            Text(
              "TESTIMONIALS",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              )
                  : Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            const Icon(
              Icons.linear_scale,
              color: primaryColor,
            ),
          ],),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 3,
          width: MediaQuery.of(context).size.width,
          child: carousel,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
