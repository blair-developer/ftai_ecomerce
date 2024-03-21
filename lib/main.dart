import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/common/widgets/app_styles.dart';
import 'package:ftai_ecomerce/global_auth/providers/user_provider.dart';
import 'package:ftai_ecomerce/global_auth/screens/dashboard.dart';
import 'package:ftai_ecomerce/global_auth/screens/home_screen.dart';
import 'package:ftai_ecomerce/global_auth/screens/signup_screen.dart';
import 'package:ftai_ecomerce/global_auth/services/auth_services.dart';
import 'package:ftai_ecomerce/pages/signin/sign_in.dart';
import 'package:ftai_ecomerce/pages/signup/sign_up.dart';
import 'package:ftai_ecomerce/pages/welcome/welcome.dart';
import 'package:ftai_ecomerce/ui/screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(ProviderScope(child: const MyApp()));
   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
        child: const MyApp(),
        ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      /*initialRoute: "/",
      routes: {
        "/":(context)=>Welcome(),
        "/SignIn":(context)=>const SignIn(),
         "/register":(context)=>const SignUp(),
      }, */
       home: Provider.of<UserProvider>(context).user.token.isEmpty ? const SignupScreen() : const dashboard(),
       //home: MainScreen(),
    );
  }
}
