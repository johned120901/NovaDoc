import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';
import 'package:nova_doc/util/resize.dart';
import 'package:nova_doc/view/widget/app_button.dart';
import 'package:nova_doc/view/widget/app_header.dart';

class DesprediblePage extends StatefulWidget {
  @override
  _DesprediblePageState createState() => _DesprediblePageState();
}

class _DesprediblePageState extends State<DesprediblePage> {
  PDFDocument _doc;
  bool _loading = false;

  _initPDf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset('assets/pdf/example.pdf');

    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

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
              child: Icon(
                Icons.home,
                color: colorSecundario,
              ),
              onPressed: () => Navigator.pushNamed(context, '/home'),
            )
          ],
        ),
        drawer: AppHeader(),
        body: Container(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    'Certificado Laboral',
                    style: TextStyle(color: colorPrimario, fontSize: 50),
                  )),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      child: Row(

                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    AppButton(text: 'Generar', onPressed: (){})
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: ResizeH(height, 500),
                  child: _loading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : PDFViewer(document: _doc)),
            ],
          ),
        ));
  }
}
