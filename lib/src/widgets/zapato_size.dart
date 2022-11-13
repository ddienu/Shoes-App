import 'package:flutter/material.dart';


class ZapatoSizePreview extends StatelessWidget {
  const ZapatoSizePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: Color(0xFFFFCF53),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          children: [

            _ZapatoConSombra(),

            // TODO: Tallas 
            

          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  const _ZapatoConSombra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(70),
        child: Stack(
          children: [

            Positioned(
              top: 130.0,
              right: 0,
              child: _ZapatoSombra()
              ),

            Image(
              image: AssetImage('assets/imgs/azul.png')
              ),
          ],
        ),
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 260,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFF4A03F),
              blurRadius: 30.0
            )
          ]
        ),
      ),
    );
    
  }
}