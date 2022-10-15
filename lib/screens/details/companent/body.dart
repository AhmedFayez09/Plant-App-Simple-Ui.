import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/companent/title_and_price.dart';
import 'icon_card.dart';
import 'image_and_icon.dart';

class BodyScreenDetails extends StatelessWidget {
  const BodyScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          const SizedBox(height: kDefaultpadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kprimaryColor),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 40)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      elevation: MaterialStateProperty.all(0)),
                  onPressed: () {},
                  child: const Text(
                    'Description',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
