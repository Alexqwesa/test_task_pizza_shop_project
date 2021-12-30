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
          // fit: BoxFit.contain,
          child: Container(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 590,
              width: 320,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 95, 40, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 103,
                      child: Center(
                        child: Image.asset('assets/bird.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Введите логин в виде 10 цифр номера телефона',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1,
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
                              autofocus: true,
                              controller: TextEditingController()..text = '+7',
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
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
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Center(
                      child: SizedBox(
                        width: 154,
                        height: 42,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Color(0xffeceff1),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(36, 36)),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/main_screen');
                            },
                            child: const Text('Войти'),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(36),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 52,
                    ),
                    SizedBox(
                      height: 36,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(
                          'Регистрация',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[700],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/bug_screen');
                        },
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[700],
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
      ),
    );
  }
}
