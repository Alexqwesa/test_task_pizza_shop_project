import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';

enum Sause { hot, sourSweet, cheese }

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool status = true;

  Sause sause = Sause.hot;
  double pizzaSize = 1.3;

  @override
  Widget build(BuildContext context) {
    // final buttonColor = Theme.of(context).elevatedButtonTheme.style!.backgroundColor;
    final buttonColor = Color(0xff0079D0);

    // final MaterialColor buttonColor = MaterialStateProperty.all(
    //         Theme.of(context).elevatedButtonTheme.style!.backgroundColor)
    //     .resolve((state) {
    //   return;
    // }) as Color;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
          child: Container(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 1000,
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
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Center(
                          child: Text(
                            'Выберите параметры:',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        ToggleSwitch(
                          minWidth: 145.0,
                          minHeight: 34,
                          cornerRadius: 83.0,
                          activeBgColors: [
                            [buttonColor],
                            [buttonColor],
                          ],
                          activeFgColor: Colors.white,
                          inactiveBgColor: const Color(0xffECEFF1),
                          inactiveFgColor: Colors.black38,
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          labels: const ['Обычное тесто', 'Тонкое тесто'],
                          radiusStyle: true,
                          onToggle: (index) {
                            //print('switched to: $index');
                          },
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          // padding: const EdgeInsets.only(left: 42),
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
                              SizedBox(
                                height: 48,
                                child: RadioListTile<Sause>(
                                  title: const Text('Острый'),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  value: Sause.hot,
                                  groupValue: sause,
                                  onChanged: (value) {
                                    setState(() {
                                      sause = value!;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(
                                height: 48,
                                // width: 330,
                                child: RadioListTile<Sause>(
                                  title: const Text('Кисло-сладкий'),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  value: Sause.sourSweet,
                                  groupValue: sause,
                                  onChanged: (value) {
                                    setState(() {
                                      sause = value!;
                                    });
                                  },
                                ),
                              ),
                              Divider(
                                thickness: 1,
                                height: 1,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(
                                height: 48,
                                child: RadioListTile<Sause>(
                                  title: const Text('Сырный'),
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  value: Sause.cheese,
                                  groupValue: sause,
                                  onChanged: (value) {
                                    setState(() {
                                      sause = value!;
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
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          // padding: const EdgeInsets.only(left: 42),
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
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 20, 5),
                                child: TextFormField(
                                  autofocus: true,
                                  controller: TextEditingController()
                                    ..text = '',
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
                                onPressed: () {},
                                child: const Text('Заказать'),
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
                      ],
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
