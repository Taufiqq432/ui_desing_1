import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool checkvalue = false;
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
        body: SingleChildScrollView(
          child: Form(
            key: formkey,

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 100, 10, 30),
                  child: Stack(children: [
                    Container(
                        height: 550,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white70),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GradientText(
                                'Sign Up',
                                colors: [Color(0xff1587ae), Color(0xff16b297)],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        hintText: 'Enter your name',
                                        icon: Icon(
                                          Icons.location_history,
                                          size: 36,
                                          color: Color(0xff16b297),
                                        )),
                                    validator: validations,

                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        hintText: 'Enter yor gmail',
                                        icon: Icon(
                                          Icons.email,
                                          size: 36,
                                          color: Color(0xff16b297),
                                        )),
                                    validator: validations,
                                  ),

                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        hintText: 'Password',
                                        icon: Icon(
                                          Icons.lock_open,
                                          size: 36,
                                          color: Color(0xff16b297),
                                        )),
                                    validator: validations,
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Forget password',
                                      ))),
                              SizedBox(
                                height: 50,
                                width: 230,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff1587ae),
                                      onPrimary: Color(0xff16b297),
                                      onSurface: Colors.teal,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      )),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/font_page');
                                    if(formkey.currentState!.validate()){}
                                  },
                                  child: Text(
                                    'Create Account',
                                    style: TextStyle(color: Colors.white,letterSpacing: 2),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      value: checkvalue,
                                      onChanged: (bool? value) {
                                        setState(() {});
                                      }),
                                  Text('I read and agree to '),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      ' Terms and Condition',
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white70),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/font_page');
                      },
                      child: Text(
                        'Sign_in',
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
