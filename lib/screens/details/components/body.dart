import 'package:flutter/material.dart';
import 'package:hstore_flutter/screens/details/components/buy_bar.dart';
import 'package:hstore_flutter/screens/details/components/image_and_icons.dart';
import 'package:hstore_flutter/screens/details/components/title_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconCards(
            size: size,
          ),
          TitlePrice(title: "Sanshin", city: "São Paulo", price: 2800),
          SizedBox(
            height: 10,
          ),
          BuyBar(size: size)
        ],
      ),
    );
  }
}
