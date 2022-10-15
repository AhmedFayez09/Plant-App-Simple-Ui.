
import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recomend_plant_card.dart';

import '../../../models/details.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
    required this.details,
  }) : super(key: key);

  final List<Details> details;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: details.length,
          itemBuilder: (c, i) {
            return RecomendPlantCard(
              details: details[i],
            );
          },
        ),
      ),
    );
  }
}
