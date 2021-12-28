import 'package:flutter/material.dart';
import 'package:test_task_pizza_shop_project/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // textTheme: GoogleFonts.robotoTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontFamily: 'Roboto', fontSize: 16),
          bodyText1: TextStyle(fontFamily: 'Roboto', fontSize: 16),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: UnderlineInputBorder(
            borderSide: BorderSide(style: BorderStyle.none, width: 0),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0079D0), // Colors.blue[700],
            shadowColor: Colors.white,
            textStyle: const TextStyle(fontFamily: 'Roboto', fontSize: 16),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {},
      home: const LoginScreen(),
    );
  }
}
