import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/hover_text_widget.dart';
import 'package:portfolio/ui/main/main_componant/line_menu.dart';
import 'package:portfolio/ui/main/main_componant/scoial_btns.dart';
import 'package:portfolio/ui/main/main_componant/skills_avatar.dart';
import 'package:portfolio/ui/main/main_componant/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We change the appbar on desktop
      appBar: Responsive.isDesktop(context)
          ? AppBar(
        backgroundColor: Colors.yellow,
        title: DefaultTextStyle(
          style: const TextStyle(fontSize: 35, color: Colors.white, shadows: [
            BoxShadow(
              blurRadius: 7.0,
              color: Colors.white,
              offset: Offset(0, 0),
            )
          ]),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FlickerAnimatedText(
                "Shady Boshra",
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              )
            ],
            onTap: () {
              print("onTap");
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Row(
              children: [
                HoverText(
                  onTap: () {},
                  text: "ABOUT",
                ),
                SizedBox(
                  width: 30,
                ),
                HoverText(
                  onTap: () {},
                  text: "EXPERIENCES",
                ),
                SizedBox(
                  width: 30,
                ),
                HoverText(
                  onTap: () {},
                  text: "ENVIRONMENTS",
                ),
                SizedBox(
                  width: 30,
                ),
                HoverText(
                  onTap: () {},
                  text: "CONTACT",
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          )
        ],
      )
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black12,
                  ),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
              // this is social buttons
              if (Responsive.isDesktop(context))
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      buildSocialButton(
                        image: "gifts/facebook.gif",
                      ),
                      buildSocialButton(
                        image: "gifts/instagram.gif",
                      ),
                      buildSocialButton(
                        image: "gifts/linkedin.gif",
                      ),
                      buildSocialButton(
                        image: "gifts/whatapp.gif",
                      ),
                      buildSocialButton(
                        image: "gifts/youtube.gif",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
