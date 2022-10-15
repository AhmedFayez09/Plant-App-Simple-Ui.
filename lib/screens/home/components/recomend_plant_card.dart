import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/details.dart';

class RecomendPlantCard extends StatelessWidget {
  RecomendPlantCard({
    Key? key,
    required this.details,
  }) : super(key: key);

  Details details;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultpadding,
        top: kDefaultpadding / 2,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(details.image),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => DetailsScreen(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultpadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kprimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "${details.title}\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: "${details.contry}".toUpperCase(),
                          style:
                              TextStyle(color: kprimaryColor.withOpacity(0.5)))
                    ]),
                  ),
                  const Spacer(),
                  Text(
                    '\$${details.price}',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kprimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
