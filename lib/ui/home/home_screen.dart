import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/main/main_componant/front_end.dart';
import 'package:portfolio/ui/main/main_componant/languages.dart';
import 'package:portfolio/ui/main/main_componant/main_skills.dart';
import 'package:portfolio/ui/main/main_componant/skills.dart';
import 'package:portfolio/ui/main/main_componant/skillsAvatar.dart';
import 'package:portfolio/ui/main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/packages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        // SkillsAvatar(),
        MainSkills(),
        Languages(),
        MyProjects(),
        Packages(),
      ],
    );
  }
}
