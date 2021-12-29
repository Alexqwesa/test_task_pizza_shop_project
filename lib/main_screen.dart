import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toggle_switch/toggle_switch.dart';

enum Sauce { hot, sourSweet, cheese }

const List<String> SauceText = ['Острый', 'Кисло-сладкий', 'Сырный'];

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int doughThickness = 0;
  Sauce sauce = Sauce.hot;
  double pizzaSize = 1.3;
  double price = 100.0;

  @override
  Widget build(BuildContext context) {
    const buttonColor = Color(0xff0079D0);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            minWidth: MediaQuery.of(context).size.width,
            maxHeight: 1000,
          ),
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
                                          title: Text(SauceText[i]),
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                          value: Sauce.values[i],
                                          groupValue: sauce,
                                          contentPadding: const EdgeInsets.only(
                                            left: 8,
                                            right: 0,
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
                          Center(
                            child: SizedBox(
                              width: 244,
                              height: 34,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Color(0xffeceff1),
                                  borderRadius: BorderRadius.all(
                                    Radius.elliptical(36, 36),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 0, 20, 5),
                                  child: TextFormField(
                                    autofocus: true,
                                    controller: TextEditingController()
                                      ..text = '$price ₽',
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
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
                                  borderRadius: BorderRadius.all(
                                    Radius.elliptical(36, 36),
                                  ),
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
      ),
    );
  }
}
