import 'package:flutter/material.dart';
import 'package:syofttask/UI/login.dart';
import 'package:syofttask/UI/signup.dart';
import '../styles.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register>  with SingleTickerProviderStateMixin{
  late TabController _tabController;
  static RegisterState ?instance;
  @override
  void initState() {

    // TODO: implement initState
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
    instance=this;
  }
  static RegisterState? getInstance() {
    return instance;
  }
  tabcontroller(){
    setState((){
      _tabController.index=1;
    });

  }
  @override
  Widget build(BuildContext context) {
    setState((){
      heghit=MediaQuery.of(context).size.height;
    });

    return SafeArea(
      child:  Scaffold(
          body: DefaultTabController(
            length: 2,
            child:
              Scaffold(
              body: Container(
                height: MediaQuery.of(context).size.height-20,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(

                      children: [
                        SizedBox(height: 40,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 200,
                                child:
                                TabBar(
                                  controller: _tabController,
                                  tabs: [
                                    Tab(child: Text("Login",style: TextStyle(color: Colors.black))),
                                    Tab(child: Text("Sign Up",style: TextStyle(color: Colors.black),)),
                                  ],
                                ),

                              ),
                              Padding(padding: EdgeInsets.only(right: 20),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 25,
                                    child: ClipRRect(
                                      borderRadius:BorderRadius.circular(50),
                                      child: Image.asset("${assetImagePath}manoj.jpg",
                                      ),
                                    )
                                ),
                              )
                            ]
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/1.2,
                          child:
                          TabBarView(
                            controller: _tabController,
                            children: [
                              LoginPage(),
                              SignUp(),
                            ],
                          ),



                        ),
                      ],
                    ),
                ),
              ),



            ),
          )


        ),

    );
  }
}
