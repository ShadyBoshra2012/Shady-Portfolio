import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/main/main_componant/line_menu.dart';

class MainScreen extends StatelessWidget {
  final _screenScrollController = ScrollController();

  MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We change the appbar on desktop
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              title: const Text('Shady'),
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black12,
                  ),
                ),
              ),
            ),
      drawer: Container(width: 100, child: LineMenu(children, scrollController: _screenScrollController)),
      body: Center(
        child: Container(
          // constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(flex: 1, child: LineMenu(children, scrollController: _screenScrollController)),
              Expanded(
                flex: 13,
                child: SingleChildScrollView(
                  controller: _screenScrollController,
                  child: Column(
                    children: [
                      ...children,
                      // our footer
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
