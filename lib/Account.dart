import 'package:flutter/material.dart';
import 'package:newcap/colors.dart';
import 'package:newcap/login_page.dart';
import 'package:newcap/space.dart';
import 'package:newcap/text_stye.dart';
import 'package:newcap/sign_in.dart';
import 'package:newcap/main_button.dart';
import 'package:newcap/text_fid.dart';

class Account_page extends StatefulWidget {
  const Account_page({Key? key}) : super(key: key);

  @override
  _Account_pageState createState() => _Account_pageState();
}

class _Account_pageState extends State<Account_page> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body:  Center(
          child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Wellcome", style: TextStyle(
              fontSize: 30,
                color: Colors.pink,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 10,),
            Text("We are here for you", style: TextStyle(
              fontSize: 30,
              color: Colors.pink,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 20,),
            Image(image: AssetImage("assets/hu3.png"),height: 250),
            SizedBox(height: 30,),
                Container(
                  width: 200,
                  height: 35,
                  child: ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => login_page()));
                  }, child: Text("Login"),
                  style:ElevatedButton.styleFrom(
                  elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
primary: Colors.pink
                  ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 200,
                  height: 35,
                  child: ElevatedButton(onPressed: () {
 Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()
 )
 );
                  }, child: Text("Sign In"),
                  style:ElevatedButton.styleFrom(
                  elevation: 10,
                  
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
primary: Colors.pink
                  )),
                ),
              ],
            ),
        ),
      );
  }
}

// Padding(
//         padding: EdgeInsets.only(top: 10.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SpaceVH(height: 80.0),
//               Text(
//                 'Welcome Back!',
//                 style: TextStyle(color: Colors.black)
//               ),
//               SpaceVH(height: 30.0),
//               Text(
//                 'Please sign in to your account',
//                 style: headline3,
//               ),
//               SpaceVH(height: 40.0),
//               textFild(
//                 controller: userName,
//                 image: '',
//                 hintTxt: 'Username',
//               ),
//               textFild(
//                 controller: userPass,
//                 image: '',
//                 isObs: true,
//                 hintTxt: 'Password',
//               ),
//               SpaceVH(height: 10.0),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Padding(
//                   padding: EdgeInsets.only(right: 20.0),
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Forgot Password?',
//                       style: headline3,
//                     ),
//                   ),
//                 ),
//               ),
//               SpaceVH(height: 30.0),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Column(
//                   children: [
//                     Mainbutton(
//                       onTap: () {},
//                       text: 'Sign in',
//                       txtColor: Color.fromARGB(255, 242, 238, 239),
//                       btnColor: blueButton,
//                     ),
//                     SpaceVH(height: 20.0),
//                     Mainbutton(
//                       onTap: () {},
//                       text: 'Sign in with google',
//                       image: 'google.png',
//                       btnColor: white,
//                       txtColor: blackBG,
//                     ),
//                     SpaceVH(height: 20.0),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (builder) => SignInPage()));
//                       },
//                       child: RichText(
//                         text: TextSpan(children: [
//                           TextSpan(
//                             text: 'Don\' have an account? ',
//                             style: headline.copyWith(
//                               fontSize: 14.0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' Sign Up',
//                             style: headlineDot.copyWith(
//                               fontSize: 14.0,
//                             ),
//                           ),
//                         ]),
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),