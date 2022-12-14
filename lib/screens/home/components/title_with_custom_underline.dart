
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultpadding / 4),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            margin: EdgeInsets.only(right: kDefaultpadding / 4),
            height: 7,
            color: kprimaryColor.withOpacity(0.2),
          ),
        ),
      ]),
    );
  }
}
