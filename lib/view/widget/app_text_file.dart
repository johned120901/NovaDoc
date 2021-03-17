import 'package:flutter/material.dart';

class AppTextFile extends StatelessWidget {
  final String hiringText;
  final bool obcureText;
  final TextEditingController textEditingController;

  const AppTextFile(
      {Key key, this.hiringText, this.obcureText, this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: TextField(
        controller: textEditingController,
        obscureText: obcureText,
        decoration: InputDecoration(
          hintText: hiringText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
