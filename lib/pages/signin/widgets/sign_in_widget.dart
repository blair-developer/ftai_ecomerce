import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';
import 'package:ftai_ecomerce/common/widgets/app_shadow.dart';
import 'package:ftai_ecomerce/common/widgets/image_widgets.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';

// preferred size widget gives you a height from the appbar downwards and we can put the child in a give space

AppBar buildAppbar() {
  return AppBar(
    //backgroundColor: Colors.white,
    bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          height: 1,
        )),
    title: Center(
        child: text16Normal(text: "Login", color: AppColors.primaryText)),
  );
}

Widget thirdpartylogin() {
  return Container(
    margin: const EdgeInsets.only(left: 80, right: 80, top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.jpg"),
        _loginButton("assets/icons/yt.png"),
        _loginButton("assets/icons/fb.jpeg"),
      ],
    ),
  );
}

Widget _loginButton(String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 40,
      height: 40,
      child: Image.asset(imagePath),
    ),
  );
}

Widget appTextformfield(
    {String text = "",
    String iconName = "",
    String hintText = "type your info",
    bool obscureText = false
    }) {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text14Normal(text: text),
         const SizedBox(height: 5,),
          Container(
            width: 325,
            height: 50,
            decoration: appBoxShadowTextField(),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: appImage(imagePath: iconName),
                ),
                Container(
                  width: 280,
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                    ),
                    onChanged: (value) {},
                    maxLines: 1,
                    autocorrect: false,
                    obscureText: obscureText,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
