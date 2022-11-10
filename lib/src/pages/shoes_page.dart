import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';


class ShoesPage extends StatelessWidget {
  const ShoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(),
    );
  }
}

