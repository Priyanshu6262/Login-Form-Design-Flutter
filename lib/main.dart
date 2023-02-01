import 'package:flutter/material.dart';
import 'package:priyanshu001/Pages/HomePage.dart';
import 'package:priyanshu001/Pages/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:priyanshu001/utles/routes.dart';
import 'package:priyanshu001/widgets/Themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
       themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context), 
      darkTheme: MyTheme.lightTheme(context), 
       debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,   
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
         MyRoutes.homeRoute:(context) => HomePage(),
        
      },
    );
  }
}
