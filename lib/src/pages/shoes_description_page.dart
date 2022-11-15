import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ShoesDescriptionPage extends StatelessWidget {
  const ShoesDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [


        Stack(
          children: [

            Hero(
              tag: 'Animation-1',
              child: ZapatoSizePreview(fullScreen: true)
              ),

            Positioned(
              top: 80,
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Icon( 
                  Icons.chevron_left, 
                  size: 40, 
                  color: Colors.white
                  ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                highlightElevation: 0,
                hoverElevation: 0,
                ),
            )

          ],
        ),


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

              _ColorsAndMore(),

              _ShadedButton(),

              SizedBox( height: 30.0,)
            ],
          ),
        )),
      ],
    ));
  }
}

class _ShadedButton extends StatelessWidget {

  const _ShadedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only( top: 30),
      padding: EdgeInsets.symmetric( horizontal: 20),
      child: Bounce(
        delay: Duration( milliseconds: 1500),
        from: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            _LikeCartSettingButtons(icon: Icon( Icons.star, color: Colors.red,) ),
            _LikeCartSettingButtons(icon: Icon(Icons.shopping_cart, color: Colors.grey.withOpacity(0.3),)),
            _LikeCartSettingButtons(icon: Icon(Icons.settings, color: Colors.grey.withOpacity(0.3))),
          ],
        ),
      ),
    );
  }
}

class _LikeCartSettingButtons extends StatelessWidget {

  final Icon icon;
  const _LikeCartSettingButtons({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 4,
            blurRadius: 20,
            offset: Offset(-5, 10)
          )
        ]
      ),
      child: icon,
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20 ),
      child: Row(
        children: [

          Expanded(
            child: Stack(
              children: [

                Positioned(left: 90, child: _BotonColor(color: Color(0xffC6D642), index: 4) ),
                Positioned(left: 60, child: _BotonColor(color: Color(0xffFFAD29), index: 3) ),
                Positioned(left: 30, child: _BotonColor(color: Color(0xff2099F1), index: 2,) ),
                _BotonColor(color: Color(0xff364D56,), index: 1,),
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
  
  final Color color;
  final int index;

  const _BotonColor({
    required this.color, 
    required this.index,
  });


  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
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
