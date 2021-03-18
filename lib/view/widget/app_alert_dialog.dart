import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';

class AppAlertDialog extends StatelessWidget {
  final String text;

  const AppAlertDialog({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/img/IconError.png'),
                ],
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(text),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(

                  child: Text('Aceptar', style: TextStyle(color: colorPrimario)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
      );
    }
  }
}
