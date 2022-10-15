import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/models/details.dart';
import '../../components/bottom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  var details = Details.allDetails();
  var FeaturModel = FeaturedPlantsModel.allFeatures();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ),
      body: Body(details: details, FeaturModel: FeaturModel),
      bottomNavigationBar:const MyBottomNavBar(),
      
    );
  }
}

