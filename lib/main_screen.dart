import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';

enum Sauce { hot, sourSweet, cheese }

const List<String> sauceText = ['Острый', 'Кисло-сладкий', 'Сырный'];

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int doughThickness = 0;
  Sauce sauce = Sauce.hot;
  double pizzaSize = 1.3;
  double price = 250.0;
  bool withCheese = false;

  @override
  Widget build(BuildContext context) {
    const buttonColor = Color(0xff0079D0);
    final ratio = 600/320;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                minWidth: MediaQuery.of(context).size.height/ratio,
              ),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 1020,
                    width: 320,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 88),
                          child: SizedBox(
                            height: 120,
                            width: 232,
                            child: Center(
                              child: Image.asset('assets/pizza.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 33, 10, 0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  'Калькулятор пиццы',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              Center(
                                child: Text(
                                  'Выберите параметры:',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontSize: 16),
                                ),
                              ),
                              const SizedBox(
                                height: 33,
                              ),
                              ToggleSwitch(
                                minWidth: 145.0,
                                minHeight: 34,
                                cornerRadius: 83.0,
                                activeBgColors: const [
                                  [buttonColor],
                                  [buttonColor],
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: const Color(0xffECEFF1),
                                inactiveFgColor: Colors.black38,
                                initialLabelIndex: doughThickness,
                                totalSwitches: 2,
                                labels: const ['Обычное тесто', 'Тонкое тесто'],
                                radiusStyle: true,
                                onToggle: (index) {
                                  setState(() {
                                    doughThickness = index;
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Размер:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Slider(
                                min: 1,
                                max: 2,
                                divisions: 10,
                                activeColor: const Color(0xFF0079D0),
                                onChanged: (val) {
                                  setState(() {
                                    pizzaSize = val;
                                  });
                                },
                                value: pizzaSize,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Соус:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Column(
                                  children: <Widget>[
                                    for (int i = 0; i < 3; i++)
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 48,
                                            child: RadioListTile<Sauce>(
                                              // tileColor: const Color(0xFF5DB075),
                                              title: Text(sauceText[i]),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .trailing,
                                              value: Sauce.values[i],
                                              groupValue: sauce,
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                left: 8,
                                                // right: 0,
                                              ),
                                              selectedTileColor:
                                                  const Color(0xFF5DB075),
                                              onChanged: (value) {
                                                setState(() {
                                                  sauce = value!;
                                                });
                                              },
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            height: 1,
                                            color: Colors.grey.shade300,
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 19,
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      color: Color(0xFFF0F0F0),
                                    ),
                                    child: ListTileTheme(
                                      horizontalTitleGap: 2,
                                      contentPadding: const EdgeInsets.all(1),
                                      child: SwitchListTile(
                                        dense: false,
                                        activeColor: const Color(0xFF0E4DA4),
                                        activeTrackColor:
                                            const Color(0xFF0E4DA4)
                                                .withOpacity(0.24),
                                        secondary: SizedBox(
                                          height: 34,
                                          width: 36,
                                          child: Image.asset(
                                            'assets/cheese.png',
                                          ),
                                        ),
                                        title: const Text('Дополнительный сыр'),

                                        // ),
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              withCheese = val;
                                            },
                                          );
                                        },
                                        value: withCheese,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(left: 15),
                                child: const Text(
                                  'Стоимость:',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: SizedBox(
                                  width: 300,
                                  height: 34,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffeceff1),
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(36, 36),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        15,
                                        0,
                                        20,
                                        5,
                                      ),
                                      child: TextFormField(
                                        // autofocus: false,
                                        textAlign: TextAlign.right,
                                        controller: TextEditingController()
                                          ..text = withCheese
                                              ? '${price * pizzaSize + 50} ₽'
                                              : '${price * pizzaSize} ₽',
                                        keyboardType: TextInputType.none,
                                        // inputFormatters: <TextInputFormatter>[
                                        //   FilteringTextInputFormatter
                                        //       .digitsOnly,
                                        // ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 33,
                              ),
                              Center(
                                child: SizedBox(
                                  width: 154,
                                  height: 42,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xffeceff1),
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(36, 36),
                                      ),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/bug_screen2');
                                      },
                                      child: const Text('Заказать'),
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(36),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
