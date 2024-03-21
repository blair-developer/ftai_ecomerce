import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/widgets/app_bar.dart';
import 'package:ftai_ecomerce/common/widgets/button_widget.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';
import 'package:ftai_ecomerce/pages/signin/widgets/sign_in_widget.dart';

import '../../common/widgets/apptextfields.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  void handleReg(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdpartylogin(),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child:
                      text14Normal(text: "Or use your email account to login")),
              const SizedBox(
                height: 50,
              ),
              appTextformfield(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your Email"),
              const SizedBox(
                height: 20,
              ),
              appTextformfield(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  obscureText: true),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: textUnderline(text: "Forgot password"),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(child: appButton(buttonName: "Login")),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: appButton(
                      buttonName: "Register", isLogin: false, context: context,
                      func: (){
                        Navigator.pushNamed(context, "/register");
                      }))
            ],
          ),
        ));
  }
}
