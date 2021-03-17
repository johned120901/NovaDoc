import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';
import 'package:nova_doc/util/resize.dart';
import 'package:nova_doc/view/widget/app_button.dart';
import 'package:nova_doc/view/widget/app_text_file.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    TextEditingController usuario = new TextEditingController();
    TextEditingController contrasena = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimario,
        toolbarHeight: 100,
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
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: ResizeH(height, 80),
                  left: ResizeH(height, 40),
                  right: ResizeH(height, 40)),
              padding: EdgeInsets.only(
                  //top: 40,
                  top: ResizeH(height, 40),
                  left: 25,
                  right: 25),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: colorSecundario,
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AppTextFile(
                        hiringText: 'Usuario',
                        obcureText: false,
                        textEditingController: usuario),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AppTextFile(
                        hiringText: 'Contraseña',
                        obcureText: true,
                        textEditingController: contrasena),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AppButton(
                      text: 'INGRESAR',
                      onPressed: (){},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
