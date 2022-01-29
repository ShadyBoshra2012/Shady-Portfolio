import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/skills/components/front_end.dart';

class Environments2 extends StatelessWidget {
  const Environments2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Wrap(
          children: [Container(
            margin: EdgeInsets.all(20.0),
            decoration:
            BoxDecoration(border: Border.all(color: primaryColor ,width: 3)),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Responsive.isMobileLarge(context)?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Responsive.isTablet(context)?
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: Responsive.isDesktop(context) &&
                                        Responsive.isTablet(context)
                                        ? EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0)
                                        : EdgeInsets.all(2),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration( color: Colors.white,
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Flutter',
                                                    style: Responsive.isDesktop(context)
                                                        ? Theme.of(context).textTheme.headline4!.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    )
                                                        : Theme.of(context).textTheme.headline5!.copyWith(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                              ),
                                              Row(children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                              ],)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: defaultPadding),
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration( color: Colors.white,
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Android',
                                                    style: Responsive.isDesktop(context)
                                                        ? Theme.of(context).textTheme.headline4!.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    )
                                                        : Theme.of(context).textTheme.headline5!.copyWith(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                              ),
                                              Row(children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star_half , color: primaryColor,),
                                                ),
                                              ],)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: Responsive.isDesktop(context) &&
                                        Responsive.isTablet(context)
                                        ? EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0)
                                        : EdgeInsets.all(2),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration( color: Colors.white,
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('IOS',
                                                    style: Responsive.isDesktop(context)
                                                        ? Theme.of(context).textTheme.headline4!.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    )
                                                        : Theme.of(context).textTheme.headline5!.copyWith(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                              ),
                                              Row(children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star_half , color: primaryColor,),
                                                ),
                                              ],)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: defaultPadding),
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration( color: Colors.white,
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Web',
                                                    style: Responsive.isDesktop(context)
                                                        ? Theme.of(context).textTheme.headline4!.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    )
                                                        : Theme.of(context).textTheme.headline5!.copyWith(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                              ),
                                              Row(children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star_border , color: primaryColor,),
                                                ),
                                              ],)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: Responsive.isDesktop(context) &&
                                        Responsive.isTablet(context)
                                        ? EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0)
                                        : EdgeInsets.all(2),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration( color: Colors.white,
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('WPF',
                                                    style: Responsive.isDesktop(context)
                                                        ? Theme.of(context).textTheme.headline4!.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    )
                                                        : Theme.of(context).textTheme.headline5!.copyWith(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                              ),
                                              Row(children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star_border , color: primaryColor,),
                                                ),
                                              ],)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: defaultPadding),
                                        Container(
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration( color: Colors.white,
                                              border: Border.all(color: primaryColor)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('Git',
                                                    style: Responsive.isDesktop(context)
                                                        ? Theme.of(context).textTheme.headline4!.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                    )
                                                        : Theme.of(context).textTheme.headline5!.copyWith(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                              ),
                                              Row(children: const [
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star , color: primaryColor,),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: Icon(Icons.star_half , color: primaryColor,),
                                                ),
                                              ],)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],)
                              : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: Responsive.isDesktop(context) &&
                                    Responsive.isTablet(context)
                                    ? EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)
                                    : EdgeInsets.all(18),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration( color: Colors.white,
                                          border: Border.all(color: primaryColor)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Flutter',
                                                style: Responsive.isDesktop(context)
                                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                )
                                                    : Theme.of(context).textTheme.headline5!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ),
                                          Row(children: const [
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                          ],)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: defaultPadding),
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration( color: Colors.white,
                                          border: Border.all(color: primaryColor)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Android',
                                                style: Responsive.isDesktop(context)
                                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                )
                                                    : Theme.of(context).textTheme.headline5!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ),
                                          Row(children: const [
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star_half , color: primaryColor,),
                                            ),
                                          ],)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: defaultPadding),
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration( color: Colors.white,
                                          border: Border.all(color: primaryColor)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('IOS',
                                                style: Responsive.isDesktop(context)
                                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                )
                                                    : Theme.of(context).textTheme.headline5!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ),
                                          Row(children: const [
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star_half , color: primaryColor,),
                                            ),
                                          ],)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: Responsive.isDesktop(context) &&
                                    Responsive.isTablet(context)
                                    ? EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)
                                    : EdgeInsets.all(18),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration( color: Colors.white,
                                          border: Border.all(color: primaryColor)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Web',
                                                style: Responsive.isDesktop(context)
                                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                )
                                                    : Theme.of(context).textTheme.headline5!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ),
                                          Row(children: const [
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star_border , color: primaryColor,),
                                            ),
                                          ],)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: defaultPadding),
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration( color: Colors.white,
                                          border: Border.all(color: primaryColor)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('WPF',
                                                style: Responsive.isDesktop(context)
                                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                )
                                                    : Theme.of(context).textTheme.headline5!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ),
                                          Row(children: const [
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star_border , color: primaryColor,),
                                            ),
                                          ],)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: defaultPadding),
                                    Container(
                                      margin: const EdgeInsets.all(15.0),
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration( color: Colors.white,
                                          border: Border.all(color: primaryColor)
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Git',
                                                style: Responsive.isDesktop(context)
                                                    ? Theme.of(context).textTheme.headline4!.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                )
                                                    : Theme.of(context).textTheme.headline5!.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                          ),
                                          Row(children: const [
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star , color: primaryColor,),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(Icons.star_half , color: primaryColor,),
                                            ),
                                          ],)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],)
                        ],
                      ), FrontEnd()
                    ],)
                  :Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Column(
                      children: [
                        Padding(
                          padding: Responsive.isDesktop(context) &&
                              Responsive.isTablet(context)
                              ? EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)
                              : EdgeInsets.all(18),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration( color: Colors.white,
                                    border: Border.all(color: primaryColor)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Flutter',
                                          style: Responsive.isDesktop(context)
                                              ? Theme.of(context).textTheme.headline4!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          )
                                              : Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                    Row(children: const [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                              SizedBox(width: defaultPadding),
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration( color: Colors.white,
                                    border: Border.all(color: primaryColor)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Android',
                                          style: Responsive.isDesktop(context)
                                              ? Theme.of(context).textTheme.headline4!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          )
                                              : Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                    Row(children: const [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star_half , color: primaryColor,),
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                              SizedBox(width: defaultPadding),
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration( color: Colors.white,
                                    border: Border.all(color: primaryColor)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('IOS',
                                          style: Responsive.isDesktop(context)
                                              ? Theme.of(context).textTheme.headline4!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          )
                                              : Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                    Row(children: const [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star_half , color: primaryColor,),
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: Responsive.isDesktop(context) &&
                              Responsive.isTablet(context)
                              ? EdgeInsets.fromLTRB(70.0, 0.0, 70.0, 0.0)
                              : EdgeInsets.all(18),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration( color: Colors.white,
                                    border: Border.all(color: primaryColor)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Web',
                                          style: Responsive.isDesktop(context)
                                              ? Theme.of(context).textTheme.headline4!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          )
                                              : Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                    Row(children: const [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star_border , color: primaryColor,),
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                              SizedBox(width: defaultPadding),
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration( color: Colors.white,
                                    border: Border.all(color: primaryColor)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('WPF',
                                          style: Responsive.isDesktop(context)
                                              ? Theme.of(context).textTheme.headline4!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          )
                                              : Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                    Row(children: const [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star_border , color: primaryColor,),
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                              SizedBox(width: defaultPadding),
                              Container(
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration( color: Colors.white,
                                    border: Border.all(color: primaryColor)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Git',
                                          style: Responsive.isDesktop(context)
                                              ? Theme.of(context).textTheme.headline4!.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Colors.black,
                                          )
                                              : Theme.of(context).textTheme.headline5!.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                    Row(children: const [
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star , color: primaryColor,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(Icons.star_half , color: primaryColor,),
                                      ),
                                    ],)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ), FrontEnd(),],)
                ],
              ),
            ),
          ),]
        ),
        Positioned(
          top: 7.0,
          left: 40.0,
          right: 0.0,
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,
                  ),
                  decoration: const BoxDecoration(
                    color: secondaryColor,
                  ),
                  child:  const Text(
                    'ENVIRONMENT',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );




  }
}
