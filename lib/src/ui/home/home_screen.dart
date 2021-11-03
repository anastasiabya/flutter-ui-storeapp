import 'package:flutter/material.dart';
import 'package:store_app/src/resource/app_colors.dart';
import 'package:store_app/src/ui/bottom_navbar.dart';
import 'package:store_app/src/ui/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
      ),
      body: const HomeBody(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
