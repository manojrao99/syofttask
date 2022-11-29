import 'package:flutter/material.dart';

import '../styles.dart';
class SLider extends StatelessWidget {
 final String title;
 final String imagepath;
 final String description;
 final bool imagefirst;
   SLider({required this.title,required this.imagepath,required this.imagefirst,required this.description});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        height: heghit/1.5,
        child: Column(
        children: [
       SizedBox(height: 150,),
          body(imagefirst),
        ],  
        ),
      ),
    );
  }
  Widget body(imagefirst){
    if(imagefirst){
     return Column(
        children: [
          Image(image: AssetImage(imagepath),
            height: heghit/3,
          ),
          SizedBox(height: 50,),
          Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Text(description,style: TextStyle(fontSize: 20,color: Colors.grey),),

        ],
      );
    }
    else{
      return Column(
        children: [

          Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Text(description,style: TextStyle(fontSize: 20,color: Colors.grey),),
          SizedBox(height: 50,),
          Image(image: AssetImage(imagepath),
            height: heghit/3,
          ),
        ],
      );
    }
  }
}
