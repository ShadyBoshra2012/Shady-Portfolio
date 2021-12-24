import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project, required this.type,
  }) : super(key: key);

  final Project project;
  final int type;

  //TODO error in overflow: TextOverflow.ellipsis
  //error line : A RenderFlex overflowed by 9.2 pixels on the bottom
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        elevation: 8,
        shadowColor: Color(0xff336587),
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          color: type==1?primaryColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CircleAvatar(
                backgroundColor: bgColor,
                radius: Responsive.isLaptop(context)?25:30,
                backgroundImage: const AssetImage("assets/images/bg.jpeg"),
              ),
              Padding(
                padding: Responsive.isLaptop(context)?const EdgeInsets.fromLTRB(0, 4.0, 0, 0) :const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
                child: Text(
                  project.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: Responsive.isLaptop(context)?12 : 16
                      , fontWeight: FontWeight.w700,color: type==1?Colors.white:Colors.black),
                ),
              ),
              Spacer(),
              Text(
                project.description!,
                maxLines: Responsive.isMobileLarge(context) ? 2 : 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: Responsive.isLaptop(context)?10 : 16, height: 1.5, color: type==1?Colors.white60:Colors.black45),
              ),
              Spacer(),
            //view project button
            Padding(
              padding: Responsive.isLaptop(context)? EdgeInsets.only(top: 6.0): EdgeInsets.only(top: 12.0),
              child: FlatButton(
                color: type==1?Colors.white24 :Colors.white70,
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(project.title!, style:  const TextStyle(height: 2, color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
                    content: Text(project.description!, style:  const TextStyle(height: 1.5,color:Colors.black54)),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Close'),
                        child: const Text('Close'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
                child:  Padding(
                  padding: Responsive.isLaptop(context)? const EdgeInsets.all(4.0) :const EdgeInsets.all(8.0),
                  child: Text('View Project', style: TextStyle(
                      fontSize: Responsive.isLaptop(context)?10 : 16,
                      color: type==1?Colors.white:Colors.black,
                  )
                  ),
                ),
                textColor: type==1?Colors.white:Colors.black,
                shape:  RoundedRectangleBorder(side:  BorderSide(
                    color:  type==1?Colors.white:Colors.black87,
                    width: 1.5,
                    style: BorderStyle.solid),
                 borderRadius: BorderRadius.circular(4)),
              ),
            ),
            //dialog of project details
            // TextButton(
            //   onPressed: () => showDialog<String>(
            //     context: context,
            //     builder: (BuildContext context) => AlertDialog(
            //       title: Text(project.title!, style:  const TextStyle(height: 1.5, color: Colors.black,fontWeight: FontWeight.bold)),
            //       content: Text(project.description!, style:  const TextStyle(height: 1.5,color:Colors.black54)),
            //       actions: <Widget>[
            //         TextButton(
            //           onPressed: () => Navigator.pop(context, 'Close'),
            //           child: const Text('Close'),
            //         ),
            //         TextButton(
            //           onPressed: () => Navigator.pop(context, 'OK'),
            //           child: const Text('OK'),
            //         ),
            //       ],
            //     ),
            //   ),
            //   FlatButton(
            //     onPressed: () => showDialog<String>(
            //       context: context,
            //       builder: (BuildContext context) => AlertDialog(
            //         title: Text(project.title!, style:  const TextStyle(height: 1.5, color: Colors.black,fontWeight: FontWeight.bold)),
            //         content: Text(project.description!, style:  const TextStyle(height: 1.5,color:Colors.black54)),
            //         actions: <Widget>[
            //           TextButton(
            //             onPressed: () => Navigator.pop(context, 'Close'),
            //             child: const Text('Close'),
            //           ),
            //           TextButton(
            //             onPressed: () => Navigator.pop(context, 'OK'),
            //             child: const Text('OK'),
            //           ),
            //         ],
            //       ),
            //     ),
            //     child: const Text('OK', style: TextStyle(
            //         color: Colors.black
            //     )
            //     ),
            //     textColor: Colors.white,
            //     shape: RoundedRectangleBorder(side: const BorderSide(
            //         color: Colors.white,
            //         width: 1,
            //         style: BorderStyle.solid
            //     ), borderRadius: BorderRadius.circular(10)),
            //   )
            //   child: Text('View Project >>>', style: TextStyle(height: 1.5, color:type==1?Colors.white: primaryColor,fontWeight: FontWeight.bold),),
            // ),
            ],
          ),
        ),
      ),
    );
  }
}
