import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class Details {
  String image;
  String title;
  String contry;
  int price;
  final void Function()? onPressed;
  Details({
    this.onPressed,
    required this.image,
    required this.title,
    required this.contry,
    required this.price,
  });
  moveTOScreen(BuildContext context , Widget Screen) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen,
      ),
    );
  }

  static List<Details> allDetails() {
    return [
      Details(
          image: "assets/images/image_1.png",
          title: 'samantha',
          contry: 'Russia',
         
          price: 440),
      Details(
          image: "assets/images/image_2.png",
          title: 'angelica',
          contry: 'Russia',
          price: 240),
      Details(
          image: "assets/images/image_3.png",
          title: 'samantha',
          contry: 'Russia',
          price: 320),
    ];
  }
}

class FeaturedPlantsModel {
  String image;
  void Function()? onPressed;

  FeaturedPlantsModel({
    required this.image,
    this.onPressed,
  });

  static List<FeaturedPlantsModel> allFeatures() {
    return [
      FeaturedPlantsModel(image: "assets/images/bottom_img_1.png"),
      FeaturedPlantsModel(image: "assets/images/bottom_img_2.png"),
    ];
  }
}
