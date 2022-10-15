import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/title_with_custom_underline.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.pressed,
  }) : super(key: key);
  final String title;
  final void Function()? pressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            title: title,
          ),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 30),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(kprimaryColor),
            ),
            onPressed: pressed,
            child: const Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
