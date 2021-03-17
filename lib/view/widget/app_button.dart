import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';

class AppButton extends StatelessWidget {
  @override
  final String text;
  final Function onPressed;
  final double height;
  final double width;

  const AppButton(
      {Key key, @required this.text, @required this.onPressed, this.height = 70, this.width = 250})
      : super(key: key);
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: onPressed,
        child: SizedBox(
          child: Text(
            text,
            style: TextStyle(fontSize: 24,color: colorPrimario),
            textAlign: TextAlign.center,

          ),
        ),
        color: colorSecundario,
        focusColor: colorPrimario,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
          side: BorderSide(color: colorPrimario)
        ),
      ),
    );
  }
}
