import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';
import 'package:nova_doc/util/resize.dart';
import 'package:nova_doc/view/widget/app_button.dart';
import 'package:nova_doc/view/widget/app_header.dart';
import 'package:nova_doc/view/widget/app_select.dart';

class DesprediblePage extends StatefulWidget {
  @override
  _DesprediblePageState createState() => _DesprediblePageState();
}

class _DesprediblePageState extends State<DesprediblePage> {
  PDFDocument _doc;
  bool _loading = false;
  List<String> itemsYear = [
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021'
  ];
  String dropdownValueYear = '2008';
  List<String> itemsMonth = [
    'Ene',
    'Feb',
    'Mar',
    'Abr',
    'May',
    'Jun',
    'Jul',
    'Ago',
    'Sep',
    'Oct',
    'Nov',
    'Dic'
  ];
  String dropdownValueMonth = 'Ene';

  void initState() {
    super.initState();
    _initPDf('');
  }

  _initPDf(asset) async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(asset);

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
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 30, right: 15),
                              child: AppSelect(
                                items: itemsYear,
                                dropdownValue: dropdownValueYear,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValueYear = newValue;
                                  });
                                },
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 55),
                            child: AppSelect(
                              items: itemsMonth,
                              dropdownValue: dropdownValueMonth,
                              onChanged: (String newValue) {
                                setState(() {
                                  dropdownValueMonth = newValue;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    AppButton(
                        text: 'Generar',
                        onPressed: () {
                          _initPDf('assets/pdf/example.pdf');
                        }),
                    Container(
                      child: Container(
                          margin: EdgeInsets.only(top: 10),
                          height: ResizeH(height, 500),
                          child: _loading
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : PDFViewer(document: _doc)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
