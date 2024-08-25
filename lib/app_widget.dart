import 'package:flutter/material.dart';
import 'package:flutter_project/app_controller.dart';
import 'package:flutter_project/home_page.dart';
import 'package:flutter_project/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return AnimatedBuilder(
    animation: AppController.instance,
    builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.amber, 
          brightness: AppController.instance.isDarkTheme 
            ? Brightness.dark 
            : Brightness.light
          ),
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage()
        },
     );
    },
   );
  }
}