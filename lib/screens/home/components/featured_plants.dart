
import 'package:flutter/material.dart';

import '../../../models/details.dart';
import 'feature_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
    required this.FeaturModel,
  }) : super(key: key);

  final List<FeaturedPlantsModel> FeaturModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: FeaturModel.length,
          itemBuilder: (c, i) {
            return FeaturePlantCard(
              featureModel: FeaturModel[i],
            );
          },
        ),
      ),
    );
  }
}
