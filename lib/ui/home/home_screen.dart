import 'package:flutter/material.dart';
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
        MyProjects(),
        Packages(),
      ],
    );
  }
}
