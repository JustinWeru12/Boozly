import 'package:boozly/constants.dart';
import 'package:boozly/screens/details/components/image_and_icons.dart';
import 'package:boozly/screens/details/components/title_and_price.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String image, title, country;
  final int price;

  const DetailsScreen({Key key, this.image, this.title, this.country, this.price}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size, image: widget.image),
          TitleAndPrice(title: widget.title, country: widget.country, price: widget.price),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 54,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
