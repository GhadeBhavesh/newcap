import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newcap/login_page.dart';
import 'package:newcap/sign_in.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage("assets/ui.png")),
          Row(
            children: [
              OutlinedButton(onPressed: () {
              
          Navigator.push(context, MaterialPageRoute(builder: (context) => login_page()));
              }, child: Text("Login"),),
              ElevatedButton(onPressed: () {
 Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
              }, child: Text("SignUp")),
            ],
          )
        ],
      ),
    ));
  }
}
