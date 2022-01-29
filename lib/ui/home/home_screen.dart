import 'package:flutter/material.dart';
import 'package:portfolio/ui/home/components/contact_me/contact_me.dart';
import 'package:portfolio/ui/home/components/last_blogs/last_blogs.dart';
import 'package:portfolio/ui/home/components/last_work/last_works.dart';
import 'package:portfolio/ui/home/components/services/my_services.dart';
import 'package:portfolio/ui/home/components/contact_me/components/power_by.dart';
import 'package:portfolio/ui/home/components/about_me/about_me.dart';
import 'package:portfolio/ui/home/components/skills/skills.dart';
import 'package:portfolio/ui/home/components/statics/my_statics.dart';
import 'package:portfolio/ui/home/components/testimonials/testimonials.dart';
import 'package:portfolio/ui/main/main_screen.dart';
import 'components/banner_components/home_banner.dart';
import 'components/projects/my_projects.dart';
import 'components/packages/my_packages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: const [
        HomeBanner(),
        AboutMe(key: ValueKey('about_me')),
        MyStatics(),
        Skills(),
        MyProjects(),
        Packages(),
        MyServices(),
        LastWorks(),
        LastBlogs(),
        Testimonials(),
        ContactMe(),
        PowerBy(),
      ],
    );
  }
}


