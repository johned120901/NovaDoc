import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';
import 'package:nova_doc/view/widget/app_button.dart';

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(children: [
        Container(
          width: 500,
          child: DrawerHeader(
            child: Image.asset(
              'assets/img/NovatecLogoColor.png',
              fit: BoxFit.contain,
              height: 100,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: colorPrimario,
                  width: 6,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 500,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: colorPrimario,
                    size: 50,
                  ),
                  Text(
                    'Nombre Usuario',
                    style: TextStyle(color: colorPrimario, fontSize: 40),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.06,
              ),
              AppButton(text: 'Certificados', onPressed: () {}),
              SizedBox(
                height: height * 0.06,
              ),
              AppButton(text: 'Desprendible de pago', onPressed: () {}),
              SizedBox(
                height: height * 0.12,
              ),
              InkWell(
                child: Text(
                  'Cerrar sesión',
                  style: TextStyle(color: colorPrimario, fontSize: 40),
                ),
                onTap: () {},
              )
            ],
          ),
        )
      ]),
    );
  }
}
