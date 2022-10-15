import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recomends_plants.dart';
import 'package:plant_app/screens/home/components/title_widget_more_btn.dart';
import '../../../models/details.dart';
import 'featured_plants.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.details,
    required this.FeaturModel,
  }) : super(key: key);

  final List<Details> details;
  final List<FeaturedPlantsModel> FeaturModel;

  get kDefaultpadding => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', pressed: () {}),
          RecomendsPlants(details: details),
          TitleWithMoreBtn(title: "Featured Plants ", pressed: () {}),
          FeaturedPlants(FeaturModel: FeaturModel),
          SizedBox(height: kDefaultpadding)
        ],
      ),
    );
  }
}
