import 'package:flutter/material.dart';
import 'package:portfolio/ui/home/components/contact_me/contact_me.dart';
import 'package:portfolio/ui/home/components/services/my_services.dart';
import 'package:portfolio/ui/home/components/statics/components/data_heigh_lights.dart';
import 'package:portfolio/ui/home/components/contact_me/components/power_by.dart';
import 'package:portfolio/ui/home/components/test/send_msg.dart';
import 'package:portfolio/ui/home/components/skills/components/programming_languages.dart';
import 'package:portfolio/ui/home/components/about_me/about_me.dart';
import 'package:portfolio/ui/home/components/skills/skills.dart';
import 'package:portfolio/ui/home/components/statics/my_statics.dart';
import 'package:portfolio/ui/main/main_screen.dart';
import 'components/banner_components/home_banner.dart';
import 'components/projects/my_projects.dart';
import 'components/packages/my_packages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        AboutMe(),
        MyStatics(),
        Skills(),
        MyProjects(),
        Packages(),
        MyServices(),
        ContactMe(),
        PowerBy(),
      ],
    );
  }
}


