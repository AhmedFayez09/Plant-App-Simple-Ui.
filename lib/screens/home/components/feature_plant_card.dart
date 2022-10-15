
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/details.dart';

class FeaturePlantCard extends StatelessWidget {
  FeaturePlantCard({
    Key? key,
    // required this.image,
    this.onPressed,
    required this.featureModel,
  }) : super(key: key);
  // final String image;
  final void Function()? onPressed;
  FeaturedPlantsModel featureModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: featureModel.onPressed,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultpadding,
          top: kDefaultpadding / 2,
          bottom: kDefaultpadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            //"assets/images/bottom_img_1.png"
            fit: BoxFit.cover,
            image: AssetImage(featureModel.image),
          ),
        ),
      ),
    );
  }
}
