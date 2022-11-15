import 'package:flutter/material.dart';
import 'package:shoes_app/src/pages/shoes_description_page.dart';

import 'package:shoes_app/src/widgets/custom_widgets.dart';


class ShoesPage extends StatelessWidget {
  const ShoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: CustomAppBar(),
      //body: ZapatoSizePreview(),
      body: Column(
        children: [
          const CustomAppBar(
            texto: 'For you',
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShoesDescriptionPage())
                      );
                    },
                    child: Hero(
                      tag: 'Animation-1',
                      child: ZapatoSizePreview()
                      )
                    ),

                  ZapatoDescripcion(
                    
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              
                  ),
                  ZapatoDescripcion(
                    
                    titulo: 'Nike Air Max 720',
                    descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              
                  ),

                  SizedBox( height: 20.0), 
                ],
              ),
            ),
          ),

      const ZapatoPriceCart( monto: 180),
        ],
      ),
    );
  }
}

