import 'package:flutter/material.dart';
import 'package:nova_doc/util/color.dart';

class AppSelect extends StatelessWidget {
  final List<String> items;
  final String dropdownValue;
  final Function onChanged;
  final double width;

  const AppSelect({Key key, this.items, this.dropdownValue, this.onChanged, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: DropdownButton<String>(
          value: dropdownValue,
          style: TextStyle(color: colorPrimario, fontSize: 40),
          icon: Icon(
            Icons.arrow_downward_rounded,
            size: 40,
            color: colorPrimario,
          ),
          underline: Container(
            height: 2,
            color: colorPrimario,
          ),
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList()),
    );
  }
}
