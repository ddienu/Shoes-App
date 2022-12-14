import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/zapato_model.dart';

import 'package:shoes_app/src/pages/shoes_page.dart';

void main() {

  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => ZapatoModel())
          )
      ],
      child: MyApp())
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      home: ShoesPage(),
    );
  }
}