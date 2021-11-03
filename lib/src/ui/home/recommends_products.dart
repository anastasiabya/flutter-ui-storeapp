import 'package:flutter/material.dart';
import 'package:store_app/src/resource/app_colors.dart';
import 'package:store_app/src/ui/detail/detail_screen.dart';

class RecommendsProducts extends StatelessWidget {
  const RecommendsProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendProductCard(
            image: "assets/11.jpeg",
            title: "iPhone 11",
            country: "USA",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
          ),
          RecomendProductCard(
            image: "assets/13.jpeg",
            title: "iPhone 13",
            country: "USA",
            price: 640,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
          ),
          RecomendProductCard(
            image: "assets/13pro.jpeg",
            title: "iPhone 13 Pro",
            country: "USA",
            price: 1200,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendProductCard extends StatelessWidget {
  const RecomendProductCard({
    Key? key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String? image, title, country;
  final int? price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 50,
      ),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset(
            image!,
            height: 150,
          ),
          GestureDetector(
            onTap: press!,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: AppColors.primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: AppColors.primaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: AppColors.primaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
