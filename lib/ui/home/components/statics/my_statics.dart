import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/my_work_ex/works_ex.dart';
import 'package:portfolio/ui/home/components/statics/components/data_heigh_lights.dart';

class MyStatics extends StatelessWidget {
  const MyStatics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // headline of page
        Padding(
          padding: const EdgeInsets.fromLTRB(25,40,0,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text(
              "MY STATICS",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              )
                  : Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            const Icon(
              Icons.linear_scale,
              color: primaryColor,
            ),
          ],),
        ),
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: HighLightsInfo(),
        ),
        Responsive.isMobileLarge(context)?
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            //work experiences
            const Padding(
              padding: EdgeInsets.fromLTRB(25,14,25,8),
              child: Works_EX(),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/certification_cuate.svg',
                  height: 250.0,
                  width: 220.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],)
            :Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  //work experiences
                   Padding(
                    padding: Responsive.isTablet(context)?const EdgeInsets.fromLTRB(25,14,25,8):const EdgeInsets.fromLTRB(35,14,35,8),
                    child: Works_EX(),
                  )
                  ,Padding(
                    padding: Responsive.isTablet(context)?const EdgeInsets.only(right: 50.0):const EdgeInsets.only(right: 130.0),
                    child: SvgPicture.asset(
                      'assets/icons/certification_cuate.svg',
                      height:Responsive.isTablet(context)?230:350,
                      width: Responsive.isTablet(context)?230:350,
                      fit: BoxFit.cover,
                    ),
                  ),
        ],)
        ,const SizedBox(height: 40)
      ],
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: TextStyle(color: Colors.black),
      maxLines: 1,
      child: Row(
        children: [
          // if (!Responsive.isMobileLarge(context)),
          if (!Responsive.isMobileLarge(context))
          Text("I am ", style: TextStyle(color: Colors.black)),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          // if (!Responsive.isMobileLarge(context)) ,
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "Mid level Flutter developer",
          textStyle: TextStyle(color: Colors.black),
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Founder of Be Light Tech",
          textStyle: TextStyle(color: Colors.black),
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: " Hi Friends ",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
