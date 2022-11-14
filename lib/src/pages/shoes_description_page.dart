import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoesDescriptionPage extends StatelessWidget {
  const ShoesDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const ZapatoSizePreview(fullScreen: true),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              ZapatoDescripcion(
                titulo: 'Nike Air Max 720',
                descripcion:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              ),
              SizedBox(height: 20),

              _MontoBuyNow(),

              SizedBox( height: 20 ),

              _ColorsAndMore(color: Colors.orange,),
            ],
          ),
        )),
      ],
    ));
  }
}

class _ColorsAndMore extends StatelessWidget {

  final Color color;
  
  const _ColorsAndMore({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20 ),
      child: Row(
        children: [

          Expanded(
            child: Stack(
              children: [

                Positioned(left: 90, child: _BotonColor(color: Color(0xffC6D642)) ),
                Positioned(left: 60, child: _BotonColor(color: Color(0xffFFAD29)) ),
                Positioned(left: 30, child: _BotonColor(color: Color(0xff2099F1)) ),
                _BotonColor(color: Color(0xff364D56)),
              ],
            )
            ),
 

          OrangeButton(
            texto: 'More related items', 
            buttonWidth: 170, 
            buttonHeight: 30, 
            buttonColor: Color(0xffFFC675))
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  const _BotonColor({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  const _MontoBuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: Row(
          children: [
            Text('\$',
                style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 13, 
                    height: 2)),

            Text('180.0',
                style: TextStyle(fontWeight: FontWeight.bold, 
                fontSize: 20
                )),

            OrangeButton(
              texto: 'Buy now', 
              buttonWidth: 110, 
              buttonHeight: 45,
              buttonColor: Colors.orange
              )
          ],
        ),
      ),
    );
  }
}
