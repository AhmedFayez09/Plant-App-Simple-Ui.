
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
   
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultpadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:  EdgeInsets.symmetric(
                    vertical: kDefaultpadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultpadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(
                            "assets/icons/back_arrow.svg"),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/sun.svg"),
                    const IconCard(icon: "assets/icons/icon_2.svg"),
                    const IconCard(icon: "assets/icons/icon_3.svg"),
                    const IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kprimaryColor.withOpacity(0.29),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
