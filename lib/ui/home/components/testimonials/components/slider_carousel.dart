import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';

class SliderCarousel extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  SliderCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: demo_projects.map((index) {
            return Builder(
              builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
// width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 12.0),
// decoration: const BoxDecoration(color: Colors.amber),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              index.title.toString(),
                              style:
                                  Theme.of(context).textTheme.headline5!.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: Responsive.isMobile(context)
                                            ? 10
                                            : Responsive.isLaptop(context)
                                                ? 20
                                                : 25,
                                        color: Colors.black,
                                      ),
                              textAlign: TextAlign.justify,
                            ),
                            Padding(
                              padding: Responsive.isMobileLarge(context)
                                  ? const EdgeInsets.fromLTRB(0, 2, 0, 0)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.fromLTRB(0, 5, 0, 0)
                                      : Responsive.isLaptop(context)
                                          ? const EdgeInsets.fromLTRB(0, 6, 0, 4)
                                          : const EdgeInsets.fromLTRB(0, 8, 0, 4),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  index.description.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: Responsive.isMobile(context)
                                            ? 7
                                            : Responsive.isMobileLarge(context)?7
                                            : Responsive.isTablet(context) ? 12
                                            : Responsive.isLaptop(context)? 28 : 35,
                                        color: Colors.black54,
                                      ),
// overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                  maxLines: 4,
                                  minFontSize: 7,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: Responsive.isMobileLarge(context)?120:Responsive.isTablet(context)?200:Responsive.isLaptop(context)?300
      :Responsive.isDesktop(context)?400:300,
            autoPlay: true,
            enlargeCenterPage: true,
            // viewportFraction: 0.9,
            // aspectRatio: 2.3,
            initialPage: 2,
          ),
        ),
      ]);
}
