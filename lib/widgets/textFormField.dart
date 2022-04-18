import 'package:flutter/material.dart';

class textFormDeco extends StatelessWidget {
  String hintText;
  
   textFormDeco({
    required
    this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
