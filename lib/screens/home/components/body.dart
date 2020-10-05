import 'package:boozly/screens/home/components/featured.dart';
import 'package:boozly/screens/home/components/header_with_seachbox.dart';
import 'package:boozly/screens/home/components/recomend.dart';
import 'package:boozly/screens/home/components/title_with_more_bbtn.dart';
import 'package:flutter/material.dart';
import 'package:boozly/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecomendsDrinks(),
          TitleWithMoreBtn(title: "Featured by Boozly", press: () {}),
          FeaturedDrinks(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
