import 'package:flutter/material.dart';
import 'package:store_app/src/ui/detail/detail_body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailBody(),
    );
  }
}
