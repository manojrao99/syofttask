
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:syofttask/UI/register.dart';
import 'package:syofttask/UI/splashscreen.dart';

import '../services/loginservice.dart';
import '../styles.dart';




class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController passwordagain = new TextEditingController();
  TextEditingController phonenumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          height: MediaQuery
              .of(context)
              .size
              .height - 150,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Row(
                    children: [
                      Text("    Hello", style: TextStyle(fontSize: 40),),
                      Text(" Beautiful", style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                      "             Enter your information bellow\n             of login with social account "),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 15, right: 15),
                    child: TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "User Name",
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                      ),
                      // set the focused border property here


                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 15, right: 15),
                      child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          controller: email,
                          // validator: (input) => EmailValidator.validate(input) ? null  : "Check your email",
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "Email Address",
                            fillColor: Colors.white,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  style: BorderStyle.solid, color: Colors.grey),
                            ),
                          ),
                          // set the focused border property here


                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      controller: password,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Password",
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                      ),
                      // set the focused border property here


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 15, right: 15),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordagain,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Password again",
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                      ),
                      // set the focused border property here


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 15, right: 15),
                    child: TextFormField(
                      controller: phonenumber,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: "Phone number",
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid, color: Colors.grey),
                        ),
                      ),
                      // set the focused border property here


                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(
                          height: 30,
                          image:
                          AssetImage("${assetImagePath}facebook.png"
                          )
                      ),
                      SizedBox(width: 20,),
                      Image(
                          height: 40,
                          image:
                          AssetImage("${assetImagePath}google.png"
                          )
                      )


                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            if(password.text==passwordagain.text) {
                              if (username.text.isNotEmpty &&
                                  email.text.isNotEmpty &&
                                  password.text.isNotEmpty &&
                                  passwordagain.text.isNotEmpty &&
                                  phonenumber.text.length >9
                              ) {
                                loginPasswordValidate();
                              }
                              else {
                                Fluttertoast.showToast(
                                    msg: "Enter correct details");
                              }
                            }
                            else{

                              Fluttertoast.showToast(
                                  msg: "Password should match");
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 50,
                            color: Colors.redAccent,
                            child: Icon(Icons.arrow_right_alt, color: Colors
                                .white,),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                  bottom: 5,
                  child: Container(
                    height: 10,
                    color: Colors.red,
                  ))
            ],
          )
      ),
    );
  }

  Future<void> loginPasswordValidate() async {
    if (email.text.trim() == "" ||
        password.text.trim() == "") {
      Fluttertoast.showToast(
          msg: "Please enter your user name and password.");
    } else {
      Map<String, dynamic> response = await LoginService().SingUp(
          email: email.text.trim(), password: password.text.trim(),
          userName: username.text,
          phonenumber: phonenumber.text
      );
      if(response.isNotEmpty){
        if(response['status']){
          RegisterState.getInstance()!.tabcontroller();
        }
      }
      print('responce $response');
    }
  }
}