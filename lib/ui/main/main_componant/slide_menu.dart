import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/bloc/work_experience_bloc.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/Work_experience.dart';
import 'package:portfolio/data/repository/my_repository.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/main/main_componant/area_info_text.dart';
import 'package:portfolio/ui/main/main_componant/front_end.dart';
import 'package:portfolio/ui/main/main_componant/languages.dart';
import 'package:portfolio/ui/main/main_componant/skills.dart';

import 'education.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Education(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: defaultPadding),
                        child: Text(
                          "PERSONAL INFORMATION",
                          style: Responsive.isDesktop(context)
                              ? Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            color: Colors.black,
                          )
                              : Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Colors.black,
                          ),            ),
                      ),
                    ),
                    const AreaInfoText(
                      title: "Date of Birth",
                      text: "08 Aug, 1998",
                    ),
                    const AreaInfoText(
                      title: "Nationality",
                      text: "Egyptian",
                    ),
                    const AreaInfoText(
                      title: "Martial",
                      text: "Single",
                    ),
                    const AreaInfoText(
                      title: "Military",
                      text: "Final Exemption",
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: defaultPadding),
                      child: Text(
                        "LANGUAGES",
                        style: Responsive.isDesktop(context)
                            ? Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                        )
                            : Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                        ),            ),
                    ),
                    const AreaInfoText(
                      title: "ARABIC",
                      text: "NATIVE",
                    ),
                    const AreaInfoText(
                      title: "ENGLISH",
                      text: "INTERMEDIATE",
                    ),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO get data from firebase
// check error : TypeError: Cannot read properties of undefined (reading 'app')
// in line  file:///E:/flutter/portfolio/lib/ui/home_componant/slide_menu.dart:22:24
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<WorkExperienceBloc, WorkExperienceState>(
        builder: (context, state) {
          if (state is WorkExperienceLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is WorkExperienceLoaded) {
            return AreaInfoText(
              title: "state.workExperience[1].jobName.toString()",
              text: "Cairo - Egypt",
            );
          } else {
            return const Text("something went wrong");
          }
        },
      ),
    );
  }
}
