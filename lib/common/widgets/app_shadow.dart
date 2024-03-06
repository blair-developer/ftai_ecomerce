import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';

BoxDecoration appBoxShadow({Color color = AppColors.primaryElement, double radius = 15, double sR=1,double bR=2,BoxBorder? border}){
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
      border: border,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: sR,
          blurRadius: bR,
          offset: Offset(0, 1)
        )
      ]
  );
}

BoxDecoration appBoxShadowTextField({Color color = AppColors.primaryBackground, double radius = 15, Color bordercolor = AppColors.primaryFourElementText}){
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border:Border.all(color: bordercolor)
  );
}