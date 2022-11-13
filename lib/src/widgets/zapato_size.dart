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

            _ZapatoTalla(),
            

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
        padding: const EdgeInsets.all(50),
        child: Stack(
          children: [
      
            Positioned(
              top: 100.0,
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
        width: 190,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFF4A03F),
              blurRadius: 40.0
            )
          ]
        ),
      ),
    );
    
  }
}

class _ZapatoTalla extends StatelessWidget {
  const _ZapatoTalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          _CajaTallaZapato( talla: 7, tallaSeleccionada: false),
          _CajaTallaZapato( talla: 7.5, tallaSeleccionada: false),
          _CajaTallaZapato( talla: 8, tallaSeleccionada: false),
          _CajaTallaZapato( talla: 8.5, tallaSeleccionada: false),
          _CajaTallaZapato( talla: 9, tallaSeleccionada: true),
          _CajaTallaZapato( talla: 9.5, tallaSeleccionada: false),
        ],
      ),
    );
    
  }
}

class _CajaTallaZapato extends StatelessWidget {

  final double talla;

  final bool tallaSeleccionada; 
  
  const _CajaTallaZapato({
    required this.talla,
    required this.tallaSeleccionada,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: (tallaSeleccionada) ? Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: (tallaSeleccionada) ? Color(0xffF1A23A) : Colors.transparent, 
              blurRadius: (tallaSeleccionada) ? 20 : 0,
              offset: Offset(0, 5)
              
              
            )
          ]
        ),
        child: Text('$talla'.toString().replaceAll('.0', ''), 
          style: TextStyle(
            color: (tallaSeleccionada) ? Colors.white : Color(0xffF1A23A),
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}