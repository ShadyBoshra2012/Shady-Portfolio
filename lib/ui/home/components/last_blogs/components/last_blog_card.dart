import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/projects/components/project_card.dart';
import 'package:portfolio/ui/home/components/services/components/hoving.dart';

class LastBlogCard extends StatelessWidget {
  const LastBlogCard({
    Key? key,
    required this.project,
    required this.type,
  }) : super(key: key);

  final Project project;
  final int type;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        Image.asset(
          "assets/images/bg.jpeg",
        ),
          Container(
            margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: Responsive.isMobile(context)?130:Responsive.isMobileLarge(context)?150:Responsive.isTablet(context)? 80:Responsive.isDesktop(context)? 170:130),
                //date box
                Container(
                  color: primaryColor,
                  child: const Padding(padding: EdgeInsets.fromLTRB(18,5,18,5),
                         child: Text("2 jun 2022", style: TextStyle(color: Colors.white,fontSize: 11),),),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(6,2,6,2),
                        child: FlatButton(
                          color: Colors.white70,
                          onPressed: (){},
                          child:  const Text('Development', style: TextStyle(
                            fontSize: 6,
                            color:Colors.black54,
                          )
                          ),
                          textColor: Colors.black,
                          shape:  RoundedRectangleBorder(side:  const BorderSide(
                              color:  Colors.black38,
                              width: 1,
                              style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                      Padding(
                        padding: Responsive.isMobileLarge(context)? const EdgeInsets.fromLTRB(12,2,12,0):Responsive.isTablet(context)? const EdgeInsets.fromLTRB(12,0,12,0):const EdgeInsets.fromLTRB(12,4,12,4),
                        child: Text(
                          project.title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: Responsive.isMobileLarge(context)?9:Responsive.isTablet(context)? 7:Responsive.isDesktop(context)? 12:10,
                              color: Colors.black,
                            )
                        ),
                      ),
                      Padding(
                        padding: Responsive.isTablet(context)? const EdgeInsets.fromLTRB(12,0,12,0):const EdgeInsets.fromLTRB(12,4,12,4),
                        child: Text(
                          project.description!,
                          maxLines: 3,
                          style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                              fontWeight: FontWeight.normal,
                              fontSize: Responsive.isMobileLarge(context)?9:Responsive.isTablet(context)? 7:Responsive.isDesktop(context)? 12:10,
                              color: Colors.black54,
                            ),
                          textAlign: TextAlign.justify,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                       SizedBox(height:Responsive.isMobileLarge(context)? 1:Responsive.isTablet(context)?0:1,),
                      Padding(
                        padding: Responsive.isTablet(context)? const EdgeInsets.fromLTRB(6,0,6,0):const EdgeInsets.fromLTRB(6,3,6,2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: null,
                              child:  Text('READ MORE',
                                style:TextStyle( fontSize: Responsive.isMobileLarge(context)?8:Responsive.isTablet(context)? 7:Responsive.isDesktop(context)? 12:10,
                                    color: primaryColor,fontWeight: FontWeight.bold),
                                // packages.link!,
                                // maxLines: 4,
                                overflow: TextOverflow.ellipsis,),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 6.0),
                            //   child: Divider(
                            //     color: primaryColor,height: 4,thickness: 2,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      // Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ]);
  }
}
