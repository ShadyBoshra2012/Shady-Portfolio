import 'package:flutter/material.dart';

import '../../../../constants.dart';

//to set data of personal information and  speaking languages in drawer side menu
class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title!,
              style: TextStyle(color: Colors.black45),
            ),
            const SizedBox(width:defaultPadding),
            const VerticalDivider(
              thickness: 1,
              width: 10,
              color: Colors.black,
            ),
            const SizedBox(width:defaultPadding),
            Text(text!),
          ],
        ),
      ),
    );
  }
}
