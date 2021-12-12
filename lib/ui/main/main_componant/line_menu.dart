import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/bloc/work_experience_bloc.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/Work_experience.dart';
import 'package:portfolio/data/repository/my_repository.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/my_projects.dart';
import 'package:portfolio/ui/main/main_componant/area_info_text.dart';
import 'package:portfolio/ui/main/main_componant/front_end.dart';
import 'package:portfolio/ui/main/main_componant/languages.dart';

import 'education.dart';

// this is don't used
class LineMenu extends StatelessWidget {
  const LineMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                    onPressed: () {
                    // Respond to button press
              },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                   // set the back
                    child: Text('S'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(primary: Color(0xffd2c18f)),
                // set the back
                child: Text('H'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(primary: Color(0xff150a90)),
                // set the back
                child: Text('A'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(primary: Color(0xff47284e)),
                // set the back
                child: Text('D'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(primary: Color(0xff11a2a)),
                // set the back
                child: Text('Y'),
              ),
              const SizedBox(height: defaultPadding )
              // OutlinedButton(
              //   onPressed: () {
              //     // Respond to button press
              //   },
              //   child: Text("OUTLINED BUTTON"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

//TODO get data from firebase
// check error : TypeError: Cannot read properties of undefined (reading 'app')
// in line  file:///E:/flutter/portfolio/lib/ui/home_componant/side_menu.dart:22:24
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
