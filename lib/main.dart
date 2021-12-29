import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_task_pizza_shop_project/login_screen.dart';
import 'package:test_task_pizza_shop_project/main_screen.dart';
import 'package:test_task_pizza_shop_project/register_screen.dart';

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
        //Color(0xff0079D0),
        // textTheme: GoogleFonts.robotoTextTheme(
        //   Theme.of(context).textTheme,
        // ),
        // backgroundColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Inter',
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          // headline2: GoogleFonts.nunito(  // didn't work
          //   fontSize: 20            ,
          //   fontWeight: FontWeight.w800,
          // ),
          headline3: TextStyle(
            // fontFamily: 'Nunito', // didn't work
            fontSize: 20,
            fontWeight: FontWeight.w800,
            // textBaseline: TextBaseline(),
            color: Color(0xFF5C5C5C),
          ),
          bodyText2: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Color(0xFFC4C4C4),
          ),
          bodyText1: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Color(0xa7000000), //  Colors.black.withOpacity(0.6),
          ),
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
            textStyle: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        radioTheme: RadioThemeData(
          visualDensity: VisualDensity.compact,
          fillColor: MaterialStateProperty.resolveWith<Color?>(
            (state) {
              if (state.contains(MaterialState.selected)) {
                return const Color(0xFF5DB075); //  Colors.green[400],
              }

              return null;
            },
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/register': (context) => const RegisterScreen(),
        '/main_screen': (context) => const MainScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
