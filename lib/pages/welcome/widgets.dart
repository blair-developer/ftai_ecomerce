import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/widgets/app_shadow.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';
import 'package:ftai_ecomerce/pages/signin/sign_in.dart';

Widget appOnboardingPage(
  PageController controller, BuildContext context,
  {String imagePath="assets/images/6.png", String title="",String Subtitle="", index=0}) {
 
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
        height: 300,
      ),
      Container(
        margin: EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),
      Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(
            text: Subtitle),
      ),
      _nextButton(index, controller, context)
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context){
  return GestureDetector(
    onTap: (){
       if (index<3) {
         controller.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.linear);
       }else{
       // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
       Navigator.pushNamed(context, "/SignIn");
       }
    },
    child: Container(
      height: 50,
      width: 320,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(child: text16Normal(text: "Next", color: Colors.white)),
    ),
  );
} 