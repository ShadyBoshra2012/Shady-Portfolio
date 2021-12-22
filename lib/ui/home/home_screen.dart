import 'package:flutter/material.dart';
import 'package:portfolio/ui/home/components/data_heigh_lights.dart';
import 'package:portfolio/ui/home/components/send_msg.dart';
import 'package:portfolio/ui/home/components/programming_languages.dart';
import 'package:portfolio/ui/home/components/about_me/about_me.dart';
import 'package:portfolio/ui/home/components/skills/skills.dart';
import 'package:portfolio/ui/main/main_screen.dart';
import 'components/banner_components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/packages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        //new statics highLights
        HighLightsInfo(),
        AboutMe(),
        Skills(),
        MyProjects(),
        Packages(),
        SendMessage(),
      ],
    );
  }
}


