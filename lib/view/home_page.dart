import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';
import 'package:nova_doc/view/widget/app_button.dart';
import 'package:nova_doc/view/widget/app_header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimario,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/LogoNovatec1.png',
              fit: BoxFit.contain,
              height: 50,

            ),
          ],
        ),
        actions: [
          FlatButton(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.home, color: colorSecundario,),
            onPressed: () => Navigator.pushNamed(context, '/home'),
          )
        ],
      ),
      drawer: AppHeader(),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150, left: 10, right: 10),
              color: colorPrimario,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/certificado');
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img/LogoCertificado.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'Certificado',
                        style: TextStyle(color: colorSecundario, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100, left: 10, right: 10),
              color: colorPrimario,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/desprendible');
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img/LogoDesprendible.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'Desprendible de Pago',
                        style: TextStyle(color: colorSecundario, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
