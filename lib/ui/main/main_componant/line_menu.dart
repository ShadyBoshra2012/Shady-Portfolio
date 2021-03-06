import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/work_experience_bloc.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/ui/home/components/banner_components/components/hover_icon_btn_widget.dart';
import 'package:portfolio/ui/main/main_componant/area_info_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

// drawer menu
class LineMenu extends StatelessWidget {
  LineMenu(this.children, {Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;
  final List<Widget> children;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: IntrinsicHeight(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    color: primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                                child: Text("Shady",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                        )))),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "HOME",
                      iconText: Icons.home_outlined),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "ABOUT ME",
                      iconText: Icons.contact_mail_outlined),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "SERVICES",
                      iconText: Icons.room_service_sharp),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "PROJECTS",
                      iconText: Icons.work_outline_outlined),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "PACKAGES",
                      iconText: Icons.file_copy_outlined),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "BLOGS",
                      iconText: Icons.bubble_chart_outlined),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoverIconButton(
                      onTap: () {},
                      text: "CONTACTS",
                      iconText: Icons.contacts_outlined),
                ),
                Divider(),
                const SizedBox(height: defaultPadding)
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
