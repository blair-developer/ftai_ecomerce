
import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';

import 'app_shadow.dart';
import 'image_widgets.dart';

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
