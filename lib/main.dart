import 'package:nova_doc/view/home_page.dart';
import 'package:nova_doc/view/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NovaDoc());
}

// clase principal
class NovaDoc extends StatefulWidget {
  @override
  _NovaDocState createState() => _NovaDocState();
}

class _NovaDocState extends State<NovaDoc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (context) => new LoginPage());
          case '/home':
            return MaterialPageRoute(builder: (context) => new HomePage());
          default:
            return null;
        }
      },
    );
  }
}
