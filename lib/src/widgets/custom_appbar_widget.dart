import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {

  final String texto;

  const CustomAppBar({
    required this.texto
    });

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0),
        margin: EdgeInsets.only( top: 30),
        width: double.infinity,
        child: Row(
          children: [
            Text(texto,
             style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
             )
            ),

            Spacer(),

            IconButton(
              tooltip: 'Search',
              splashRadius: 15,
              splashColor: Colors.grey,
              iconSize: 30,
              onPressed: (){}, 
              icon: Icon(Icons.search)
              ),
          ],
        ),
      ),
    );
  }
}