import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';
import 'package:ftai_ecomerce/common/widgets/app_shadow.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';

Widget appButton({
  double width=325,
  double height=50,
  bool isLogin=true,
  String buttonName=""}){
  return GestureDetector(
    onTap: () {
      
    },
    child: Container(
      width: width,
      height: height,
      decoration: appBoxShadow(color:isLogin?AppColors.primaryElement:Colors.white,border: Border.all(color: AppColors.primaryFourElementText)),
      child: Center(child: text16Normal(text: buttonName, color: isLogin?AppColors.primaryBackground:AppColors.primaryText)),
    ),
  );
}