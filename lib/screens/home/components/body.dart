import 'package:flutter/material.dart';
import 'package:hstore_flutter/constants.dart';
import 'package:hstore_flutter/screens/home/components/featured_products.dart';
import 'package:hstore_flutter/screens/home/components/recommend_product.dart';
import 'package:hstore_flutter/screens/home/components/title_button.dart';
import 'header_search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Tamanho da tela
    Size size = MediaQuery.of(context).size;
    // Scroll para tela pequena
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithButton(title: "Recomendado", press: () {}),
          RecommendedProduct(),
          TitleWithButton(title: "Destaques", press: () {}),
          FeaturedProducts(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
