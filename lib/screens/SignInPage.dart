import 'package:flutter/material.dart';
import 'package:my_app/widgets/textFormField.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textFormDeco(hintText: "username"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textFormDeco(hintText: "password"),
        ),
      
      
        InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: double.infinity,
            height: 30,
            color: Colors.black45,
            child: Text("next"),
            ),
          ),
          onTap: (){},
        )
      
      ],),),

      
    );
  }
}