import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

// this to send message
class SendMessage extends StatelessWidget {
  const SendMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height:60,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 5,
                      color: Colors.grey)
                ],
              ),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.face, color: Colors.yellow,),
                      onPressed: () {}),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Can help you? ...",
                          hintStyle: TextStyle(color: Colors.yellow),
                          border: InputBorder.none,),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2,
                  vertical: defaultPadding),
              backgroundColor: Colors.yellow,
            ),
            child: const Text(
              "Send",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}