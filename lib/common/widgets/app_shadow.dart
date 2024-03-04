import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';

BoxDecoration appBoxShadow({Color color = AppColors.primaryElement, double radius = 15, double sR=1,double bR=2}){
  return BoxDecoration(
      color: AppColors.primaryElement,
      borderRadius: BorderRadius.circular(15),
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