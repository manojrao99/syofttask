import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:syofttask/UI/register.dart';
import 'package:syofttask/models/slidemodel.dart';

import '../styles.dart';
class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  List<SLider> slides = [];
  @override
  void initState() {
    slides.add(
        SLider(title: "Order Your Food",description: "Now you can order food any time \n right from mobile",
        imagefirst: false,
          imagepath: '${assetImagePath}orderfood.PNG',
        ));
      slides.add(
    SLider(title: "Cooking Safe Food",description: "We are maintain  safly and keep\n cleean while making food",
      imagefirst: true,
      imagepath: '${assetImagePath}cookingsafefood.PNG',
    )
    );
    slides.add(
        SLider(title: "Quick Delivery",description: " Orders your favorite meals will  \n be immediately deliver",
          imagefirst: false,
          imagepath: '${assetImagePath}img.png',
        ));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  IntroSlider(
      colorDot: Colors.grey,

sizeDot: 10,

showDotIndicator: true,



showSkipBtn: false,
      showPrevBtn: false,
      listCustomTabs: slides,
      // slides: ,

        onTabChangeCompleted: (int i){
        },
          renderNextBtn:  CircleAvatar(
            backgroundColor: Colors.blue,

            radius: 100,
            child: Text("next",style: TextStyle(fontSize: 10,color: strtbtncolor),),

          ),
        renderDoneBtn: CircleAvatar(
        backgroundColor: strtbtncolor,

          radius: 100,
         child: Text("start",style: TextStyle(fontSize: 10),),

        ),
   onDonePress: (){
     Navigator.of(context).push(MaterialPageRoute(
         builder: (context) =>  Register()));
   },
      colorActiveDot: strtbtncolor,
    );
  }
}
