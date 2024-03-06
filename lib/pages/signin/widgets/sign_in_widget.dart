import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';
import 'package:ftai_ecomerce/common/widgets/app_shadow.dart';
import 'package:ftai_ecomerce/common/widgets/image_widgets.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';

// preferred size widget gives you a height from the appbar downwards and we can put the child in a give space


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
