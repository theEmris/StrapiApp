import 'package:flutter/material.dart';
import 'package:my_app/widgets/textFormField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 300,
                child:
         textFormDeco(hintText: "email"),
              
              ),
            ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
              height: 30,
                width: 300,
             
             child: textFormDeco(hintText: "password")),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
              height: 30,
                width: 300,
             
             child: textFormDeco(hintText: "username")),
         ),



        ],),
      ),
      
    );
  }
}