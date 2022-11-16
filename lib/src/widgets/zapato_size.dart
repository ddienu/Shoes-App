import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/zapato_model.dart';


class ZapatoSizePreview extends StatelessWidget {

  final bool fullScreen;

  const ZapatoSizePreview({
    this.fullScreen = false
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric( 
        horizontal: (fullScreen) ? 5 : 20, 
        vertical: (fullScreen) ? 5 : 10,
        ),
      child: Container(
        width: double.infinity,
        height: (fullScreen) ? 380 : 400,
        decoration: BoxDecoration(
          color: Color(0xFFFFCF53),
          borderRadius: (fullScreen)
                      ? const BorderRadius.vertical(top: Radius.circular(40), bottom: Radius.circular(50))
                      : BorderRadius.circular(50)
        ),
        child: Column(
          children: [

            _ZapatoConSombra(),

            if(!fullScreen)
            _ZapatoTalla(),
            
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatefulWidget {
  const _ZapatoConSombra({Key? key}) : super(key: key);

  @override
  State<_ZapatoConSombra> createState() => _ZapatoConSombraState();
}

class _ZapatoConSombraState extends State<_ZapatoConSombra> {

  final imagenes = [
    const AssetImage('assets/imgs/amarillo.png'),
    const AssetImage('assets/imgs/azul.png'),
    const AssetImage('assets/imgs/negro.png'),
    const AssetImage('assets/imgs/verde.png'),
  ];
  @override

  void didChangeDependencies() {
    super.didChangeDependencies();
    List.generate(imagenes.length, (index) => precacheImage(imagenes[index], context));
  }
  Widget build(BuildContext context) {

    final zapatoModel = Provider.of<ZapatoModel>(context);

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
              image: AssetImage( zapatoModel.assetImage )
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
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          _CajaTallaZapato( talla: 7),
          _CajaTallaZapato( talla: 7.5),
          _CajaTallaZapato( talla: 8),
          _CajaTallaZapato( talla: 8.5),
          _CajaTallaZapato( talla: 9),
          _CajaTallaZapato( talla: 9.5),
        ],
      ),
    );
    
  }
}

class _CajaTallaZapato extends StatelessWidget {

  final double talla;

  
  const _CajaTallaZapato({
    required this.talla,
  });

  @override
  Widget build(BuildContext context) {

    final zapatoModel = Provider.of<ZapatoModel>(context);

    return GestureDetector(
      onTap: () {
        final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);

        zapatoModel.talla = talla;
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Container(
          alignment: Alignment.center,
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: (zapatoModel.talla == talla ) ? Color(0xffF1A23A) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: (zapatoModel.talla == talla) ? Color(0xffF1A23A) : Colors.transparent, 
                blurRadius: (zapatoModel.talla == talla) ? 20 : 0,
                offset: Offset(0, 5)
                
                
              )
            ]
          ),
          child: Text('$talla'.toString().replaceAll('.0', ''), 
            style: TextStyle(
              color: (zapatoModel.talla == talla) ? Colors.white : Color(0xffF1A23A),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}