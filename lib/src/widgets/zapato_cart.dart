import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';



class ZapatoPriceCart extends StatelessWidget {

  final double monto;

  const ZapatoPriceCart({
    required this.monto
    });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 10.0),
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(80.0)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 30.0),
          child: Row(
            children: [

              Text('\$', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  height: 2
                )
              ),

              Text('$monto', 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )
              ),

              //SizedBox( width: MediaQuery.of(context).size.width * 0.5,),

              const OrangeButton(
                texto: 'Add to cart', 
                buttonHeight: 40.0, 
                buttonWidth: 120.0, 
                buttonColor: Colors.orange,
                ),
            ],
          ),
        ),
      ),
    );
  
  }
}