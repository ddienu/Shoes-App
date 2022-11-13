import 'package:flutter/material.dart';

import 'package:shoes_app/src/widgets/custom_widgets.dart';


class ShoesPage extends StatelessWidget {
  const ShoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: CustomAppBar(),
      //body: ZapatoSizePreview(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              texto: 'For you',
            ),
      
            ZapatoSizePreview(),
      
            ZapatoDescripcion(
              
              titulo: 'Nike Air Max 720',
              descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
      
            ),
          ],
        ),
      ),
    );
  }
}

