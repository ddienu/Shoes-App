import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {

  final String texto;
  final double buttonWidth;
  final double buttonHeight;
  final Color buttonColor;

  const OrangeButton({
    Key? key, 
    required this.texto, 
    required this.buttonWidth, 
    required this.buttonHeight,
    required this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerRight,
        width: double.infinity,
        child: MaterialButton(
          minWidth: buttonWidth,
          height: buttonHeight,
          onPressed: () {},
          color: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Text(texto,
              style: TextStyle(color: Colors.white, fontSize: 12)),
        ),
      ),
    );
  }
}
