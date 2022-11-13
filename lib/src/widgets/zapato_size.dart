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
        padding: const EdgeInsets.all(80),
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/imgs/azul.png')
              ),
          ],
        ),
      ),
    );
  }
}