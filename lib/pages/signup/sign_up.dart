import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/widgets/app_bar.dart';
import 'package:ftai_ecomerce/common/widgets/button_widget.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';
import 'package:ftai_ecomerce/pages/signin/widgets/sign_in_widget.dart';

import '../../common/widgets/apptextfields.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: text14Normal(
                      text: "Enter your details below and signup")),
              const SizedBox(
                height: 50,
              ),
              appTextformfield(
                  text: "UserName",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your UserName"),
              const SizedBox(
                height: 20,
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
              appTextformfield(
                  text: "Confirm Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  obscureText: true),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: text14Normal(
                    text:
                        "By creating an account you are agreeing with our terms and conditions"),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                  child: appButton(
                      buttonName: "Register", isLogin: true, context: context,
                      
                      ))
            ],
          ),
        ));
  }
}
