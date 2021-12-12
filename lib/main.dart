import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/bloc/work_experience_bloc.dart';
import 'package:portfolio/data/repository/my_repository.dart';
import 'package:portfolio/ui/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WorkExperienceBloc(
        myRepository: MyRepository(),
      )..add(LoadWorkExperience()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shady Portfolio',
        theme: ThemeData.light().copyWith(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                bodyText1: TextStyle(color: bodyTextColor),
                bodyText2: TextStyle(color: bodyTextColor),
              ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
