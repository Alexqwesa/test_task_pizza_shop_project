import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            height: 580,
            width: 320,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 80, 40, 80),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    width: 103,
                    child: Center(
                      child: Image.asset("assets/bird.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Введите логин в виде 10 цифр номера телефона',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 244,
                      height: 34,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Color(0xffeceff1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(36, 36)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 20, 5),
                          child: TextFormField(
                            // initialValue: '+7',
                            controller: TextEditingController()..text = '+7',
                            // decoration: InputDecoration(),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: SizedBox(
                      width: 244,
                      height: 34,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          // border: Border.all(color: Colors.grey, width: 0),
                          color: Color(0xffeceff1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(36, 36)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 20, 5),
                          child: TextFormField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            // decoration: InputDecoration(),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
