import 'package:flutter/material.dart';
import 'package:my_app/widgets/textFormField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Container(
            height: 30,
            width: 300,
            child:
       textFormDeco(hintText: "email"),
          
          ),
       Container(
          height: 30,
            width: 300,
         
         child: textFormDeco(hintText: "password")),
       Container(
          height: 30,
            width: 300,
         
         child: textFormDeco(hintText: "username")),



      ],),
      
    );
  }
}