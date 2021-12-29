import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                padding: const EdgeInsets.fromLTRB(10, 45, 10, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        const SizedBox(
                          height: 20,
                          child: Image(
                            image: AssetImage('assets/group.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        const SizedBox(
                          width: 126,
                          child: Text(
                            'Регистрация',
                            // style: TextStyle(
                            //   fontFamily: 'Pushster',
                            //   fontSize: 20,
                            //   fontWeight: FontWeight.w800,
                            //   color: Color(0xFF5C5C5C),
                            // ),
                            style: TextStyle(
                              fontFamily: 'NanitoAsset',
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF5C5C5C),
                            ),
                            // TODO: fix nunito font
                            // style: GoogleFonts.nunito(
                            //   textStyle: const TextStyle(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w900,
                            //     color: Color(0xFF5C5C5C),
                            //   ),
                            // ),
                            // style: GoogleFonts.nunito(
                            //   textStyle: Theme.of(context).textTheme.headline3,
                            // ),
                            // style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      thickness: 1.5,
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        'Чтобы зарегистрироваться введите свой номер телефона и почту',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2,
                        // TextStyle(color: Colors.black.withOpacity(0.3),
                        // ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Телефон',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1,
                        // style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
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
                      height: 14,
                    ),
                    Center(
                      child: Text(
                        'Почта',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
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
                      height: 24,
                    ),
                    Center(
                      child: Text(
                        'Вам придет четырехзначный код, который будет вашим паролем',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Изменить пароль можно\n будет в личном кабинете после регистрации',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                            onPressed: () {},
                            child: const Text('Отправить код'),
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
