import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';
import 'package:ftai_ecomerce/pages/signin/widgets/sign_in_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Column(
         children: [
           thirdpartylogin(),
           const SizedBox(height: 20,),
           text14Normal(text: "Or use your email account to login"),
           appTextformfield(),
         ],
      )
    );
  }
}