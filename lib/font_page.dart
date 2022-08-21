import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> formkey=GlobalKey<FormState>();
  String? validations(value){
    if(value.isEmpty) {
      return "required";
    }else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff1587ae), Color(0xff16b297)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      icon: CircleAvatar(
                        backgroundColor: Color(0xff7cafcc),
                        child: Icon(
                          Icons.close,
                          color: Colors.white70,
                        ),
                      ),
                      color: Colors.white70,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Sign in to your account',
                      style: TextStyle(letterSpacing: 1, color: Colors.white70),
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
                //
                Image.asset('assets/coinlogo.jpeg'),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide.none,

                          //
                        ),

                        filled: true,
                        fillColor: Color(0xff7cafcc),
                        hintText: "Username",

                        hintStyle: TextStyle(color: Colors.white70)),
                    validator: validations,


                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Color(0xff7cafcc),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white70)),
                        validator: validations,


                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(

                      onPressed: () {
                        Navigator.pushNamed(context, '/profile_page');
                        if(formkey.currentState!.validate()){}


                      },
                      style: ElevatedButton.styleFrom(

                        fixedSize: const Size(60, 60),


                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0))),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(color: Colors.blue),
                      )),
                ),
                SizedBox(
                  height: 100,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
