
import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';

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
