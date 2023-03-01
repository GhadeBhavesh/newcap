import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newcap/home.dart';
import 'package:newcap/sign_in.dart';
import 'package:newcap/space.dart';


class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {

  bool _isObsure= true;
  bool pass = true;
    TextEditingController userPass = TextEditingController();
  Color pinki = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(36),
            child: Column(
              children: [
               Form(child: Column(
                children: [
                  Image.asset("assets/hu1.png", height: 200,),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: const Icon(Icons.person_outline_outlined),
                      labelText: "Email",
                      hintText: "Email",
                      border: const OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                     obscureText: pass ? !_isObsure: false,
                  controller: userPass,
                    decoration: InputDecoration(
                      suffixIcon: pass ? IconButton(onPressed: (){
                    setState((){
_isObsure = !_isObsure;
        });
      }, icon: Icon(_isObsure? Icons.visibility : Icons.visibility_off,))
   :null,
                      prefixIcon: const Icon(Icons.lock_outlined),
                     
                      labelText: "Password",
                      hintText: "Password",
                      border: const OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: const Text("Forget Password ?")),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    }, child: const Text("login"), style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      )
                    ),)),
                    const SizedBox(height: 10,),
                    const Text("OR",style: TextStyle(fontWeight: FontWeight.w600),),
                    const SizedBox(height: 10,),
                    SizedBox(height: 60,
                    width: double.infinity,
                   child: OutlinedButton.icon(
                      icon: const Image(image: AssetImage("assets/googe.png"),),
                      label: const Text("Sign in with Google",style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black)),
                      onPressed: (){
                        
                      }, )
               ),
               const SizedBox(height: 20,),
               TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
               }, child: const Text.rich(TextSpan(children: [
                TextSpan(
                text: "Don't have a account ? ",
                style: TextStyle(
                  color: Colors.black
                )
               ),
                TextSpan(
                text: " Sign In",
                  style: TextStyle(            
                )
               ),
               ])))
               ],
               ))
              ],
            ),),
            
          ),
        );
  }
}