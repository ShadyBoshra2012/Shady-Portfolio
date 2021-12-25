import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/ui/home/components/contact_me/components/my_contact_data.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ContactMeState();
  }
}

class ContactMeState extends State<ContactMe> {
  String? _name;
  String? _email;
  String? _subject;
  String? _message;

  final TextEditingController _editTextController = TextEditingController();

// Initialise a scroll controller.
  final ScrollController _scrollController = ScrollController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // scroll widget with text field .. not used yet.
  Widget _scroll() {
    return Scrollbar(
      controller: _scrollController,
      isAlwaysShown: true,
      child: TextField(
        scrollController: _scrollController,
        autofocus: true,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        autocorrect: true,
        onChanged: (s) => {},
        decoration: const InputDecoration(
          border: InputBorder.none,
          isDense: true,
        ),
      ),
    );
  }

  Widget _buildName() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          cursorColor: primaryColor,
          style: const TextStyle(color: Colors.black),
          decoration: const InputDecoration(labelText: 'Name *'),
          // maxLength: 10,
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Name is Required';
            }
            return null;
          },
          onSaved: (String? value) {
            _name = value!;
          },
        ),
      ),
    );
  }

  Widget _buildEmail() {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          cursorColor: primaryColor,
          style: const TextStyle(color: Colors.black),
          decoration: const InputDecoration(labelText: 'Email *'),
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Email is Required';
            }

            if (!RegExp(
                    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
              return 'Please enter a valid email Address';
            }

            return null;
          },
          onSaved: (String? value) {
            _email = value!;
          },
        ),
      ),
    );
  }

  Widget _buildSubject() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: primaryColor,
        style: const TextStyle(color: Colors.black),
        decoration: const InputDecoration(labelText: 'Subject *'),
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'Subject is Required';
          }

          return null;
        },
        onSaved: (String? value) {
          _subject = value!;
        },
      ),
    );
  }

  //add scroll to textField
  Widget _buildMessage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scrollbar(
        controller: _scrollController,
        isAlwaysShown: true,
        child: TextFormField(
          scrollController: _scrollController,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          autocorrect: true,
          onChanged: (s) => {},
          cursorColor: primaryColor,
          style: const TextStyle(color: Colors.black),
          decoration: const InputDecoration(
            labelText: 'Your Message *',
          ),
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'Your Message is Required';
            }

            return null;
          },
          onSaved: (String? value) {
            _message = value!;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25,30,0,0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(
                "GET IN TOUCH",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                )
                    : Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              const Icon(
                Icons.linear_scale,
                color: primaryColor,
              ),
              Text(
                "You can contact me in any time. ",
                style: Responsive.isDesktop(context)
                    ? Theme.of(context).textTheme.headline1!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                )
                    : Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Responsive.isDesktop(context)
                    ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // send massage
                      Expanded(
                        flex: 7,
                        child: Card(
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Responsive.isDesktop(context)
                                  ? Column(
                                children: [
                                  Row(
                                    children: [
                                      _buildName(),
                                      _buildEmail(),
                                    ],
                                  ),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              )
                                  : Responsive.isLaptop(context)
                                  ? Column(
                                children: [
                                  Row(
                                    children: [
                                      _buildName(),
                                      _buildEmail(),
                                    ],
                                  ),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              )
                                  : Responsive.isTablet(context)
                                  ? Column(
                                children: [
                                  _buildName(),
                                  _buildEmail(),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              )
                                  : Column(
                                children: [
                                  _buildName(),
                                  _buildEmail(),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              ),
                              //send message button
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: RaisedButton(
                                  color: primaryColor,
                                  child: const Text(
                                    'Send',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () {
                                    if (!_formKey.currentState!.validate()) {
                                      return;
                                    }

                                    _formKey.currentState!.save();

                                    print(_name);
                                    print(_email);
                                    print(_message);
                                    print(_subject);

                                    //Send to API
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //my data
                      Expanded(flex: 3, child: MyContactData())
                    ])
                    : Column(children: [
                  Responsive.isTablet(context)
                      ?Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // send massage
                        Card(
                          elevation: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Responsive.isDesktop(context)
                                  ? Column(
                                children: [
                                  Row(
                                    children: [
                                      _buildName(),
                                      _buildEmail(),
                                    ],
                                  ),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              )
                                  : Responsive.isLaptop(context)
                                  ? Column(
                                children: [
                                  Row(
                                    children: [
                                      _buildName(),
                                      _buildEmail(),
                                    ],
                                  ),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              )
                                  : Responsive.isTablet(context)
                                  ? Column(
                                children: [
                                  _buildName(),
                                  _buildEmail(),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              )
                                  : Column(
                                children: [
                                  _buildName(),
                                  _buildEmail(),
                                  _buildSubject(),
                                  _buildMessage(),
                                ],
                              ),
                              //send message button
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: RaisedButton(
                                  color: primaryColor,
                                  child: const Text(
                                    'Send',
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  onPressed: () {
                                    if (!_formKey.currentState!.validate()) {
                                      return;
                                    }

                                    _formKey.currentState!.save();

                                    print(_name);
                                    print(_email);
                                    print(_message);
                                    print(_subject);

                                    //Send to API
                                  },
                                ),
                              ),
                            ],

                          ),
                        ),
                        //my data
                        MyContactData(),
                        const SizedBox(height: 50),
                      ])
                      : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // send massage
                        Expanded(
                          flex: 7,
                          child: Card(
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Responsive.isDesktop(context)
                                    ? Column(
                                  children: [
                                    Row(
                                      children: [
                                        _buildName(),
                                        _buildEmail(),
                                      ],
                                    ),
                                    _buildSubject(),
                                    _buildMessage(),
                                  ],
                                )
                                    : Responsive.isLaptop(context)
                                    ? Column(
                                  children: [
                                    Row(
                                      children: [
                                        _buildName(),
                                        _buildEmail(),
                                      ],
                                    ),
                                    _buildSubject(),
                                    _buildMessage(),
                                  ],
                                )
                                    : Responsive.isTablet(context)
                                    ? Column(
                                  children: [
                                    _buildName(),
                                    _buildEmail(),
                                    _buildSubject(),
                                    _buildMessage(),
                                  ],
                                )
                                    : Column(
                                  children: [
                                    _buildName(),
                                    _buildEmail(),
                                    _buildSubject(),
                                    _buildMessage(),
                                  ],
                                ),
                                //send message button
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: RaisedButton(
                                    color: primaryColor,
                                    child: const Text(
                                      'Send',
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      if (!_formKey.currentState!.validate()) {
                                        return;
                                      }

                                      _formKey.currentState!.save();

                                      print(_name);
                                      print(_email);
                                      print(_message);
                                      print(_subject);

                                      //Send to API
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //my data
                        const Expanded(flex: 3, child: MyContactData())
                      ])
                ])
            ),
          ),
        ],
      ),
    );
  }
}
