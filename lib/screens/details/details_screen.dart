import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/companent/body.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = 'Details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyScreenDetails(),
    );
  }
}
