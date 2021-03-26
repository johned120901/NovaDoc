import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';
import 'package:nova_doc/view/widget/app_header.dart';

class CertificadoPage extends StatefulWidget {
  @override
  _CertificadoPageState createState() => _CertificadoPageState();
}

class _CertificadoPageState extends State<CertificadoPage> {
  @override
  Widget build(BuildContext context) {
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
      ),
      drawer: AppHeader(),
      body: Container(
       
      ),
    );
  }
}
