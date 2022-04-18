import 'package:flutter/material.dart';

class IntrancePage extends StatelessWidget {
  const IntrancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Container(
              height: 30,
              width: 300,
              child: Text("Sign Up"),
              color: Colors.black45,
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "signUp", (route) => false);
            },
          ),
          InkWell(
            child: Container(
              height: 30,
              width: 300,
              child: Text("Sign In"),
              color: Colors.greenAccent,
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "signIn", (route) => false);
            },
          )
        ],
      ),
    );
  }
}
