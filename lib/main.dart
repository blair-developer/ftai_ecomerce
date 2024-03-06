import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ftai_ecomerce/common/widgets/app_styles.dart';
import 'package:ftai_ecomerce/pages/signin/sign_in.dart';
import 'package:ftai_ecomerce/pages/welcome/welcome.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      initialRoute: "/",
      routes: {
        "/":(context)=>Welcome(),
        "/SignIn":(context)=>const SignIn(),

      },
      //home: Welcome(),
    );
  }
}
