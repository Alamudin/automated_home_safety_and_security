import 'package:ahss_mobile_frontend/login_screen.dart';
import 'package:ahss_mobile_frontend/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automated Home Safety and Security',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LogInScreen(),
        DashboardScreen.id: (context) => DashboardScreen(),
      },
    );
  }
}

//TODO: Make Login and dashboard only