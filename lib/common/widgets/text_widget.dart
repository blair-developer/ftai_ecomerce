import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/utils/app_colors.dart';

Widget text24Normal({required String text, Color color = AppColors.primaryText}) {

  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.bold),
  );
}

Widget text16Normal({required String text,Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
         fontSize: 16,
          fontWeight: FontWeight.bold
          ),
  );
}

Widget text14Normal({required String text,Color color = AppColors.primaryThreeElementText}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
        color: color,
         fontSize: 14,
          fontWeight: FontWeight.bold
          ),
  );
}

Widget textUnderline({String text="your text"}) {
  return GestureDetector(
    onTap: () {
      
    },
    child: Text(
      text, style: TextStyle(
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
    ),
  );
}
