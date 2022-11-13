import 'package:flutter/material.dart';


class ZapatoDescripcion extends StatelessWidget {

  final String titulo;
  final String descripcion;

  const ZapatoDescripcion({
    required this.titulo, 
    required this.descripcion
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 10),

          Text(titulo, 
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            )
          ),

          SizedBox(height: 20),

          Text(descripcion,
            style: TextStyle(
              color: Colors.black54,
              height: 1.8
            )
          ),
        ],
      ),
    );
  }
}