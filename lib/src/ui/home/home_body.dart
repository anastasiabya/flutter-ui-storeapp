import 'package:flutter/material.dart';
import 'package:store_app/src/ui/home/home_header.dart';
import 'package:store_app/src/ui/home/home_title.dart';
import 'package:store_app/src/ui/home/products.dart';
import 'package:store_app/src/ui/home/recommends_products.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeHeader(size: size),
          HomeTitle(title: "Recommended", press: () {}),
          const RecommendsProducts(),
          HomeTitle(title: "iPhone", press: () {}),
          const Products(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
