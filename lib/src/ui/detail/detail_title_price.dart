import 'package:flutter/material.dart';
import 'package:store_app/src/resource/app_colors.dart';

class DetailTitlePrice extends StatelessWidget {
  const DetailTitlePrice({
    Key? key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String? title, country;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
