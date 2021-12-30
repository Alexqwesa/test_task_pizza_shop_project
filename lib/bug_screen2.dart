import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//
// for https://github.com/material-foundation/google-fonts-flutter/issues/207
//

class BugScreen2 extends StatefulWidget {
  const BugScreen2({Key? key}) : super(key: key);

  @override
  _BugScreen2State createState() => _BugScreen2State();
}

class _BugScreen2State extends State<BugScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        // child: SizedBox.expand(

        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    ' Right',
                    style: TextStyle(
                      fontFamily: 'NunitoAsset',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Wrong',
                    style: GoogleFonts.nunito(
                      // this didn't work
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            for (int i = 0; i < 9; i++)
              Row(
                children: [
                  Text(
                    ' Регистрация',
                    style: TextStyle(
                      fontFamily: 'NunitoAsset',
                      fontSize: 30,
                      fontWeight: FontWeight.values.elementAt(i),
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Регистрация',
                    style: GoogleFonts.nunito(
                      // this didn't work
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.values.elementAt(i),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            const Divider(
              thickness: 10,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    ' Right',
                    style: TextStyle(
                      fontFamily: 'NunitoAsset',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
                // VerticalDivider(),
                Container(
                  height: 64.0,
                  width: 1.0,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                Expanded(
                  child: Text(
                    'Wrong',
                    style: GoogleFonts.nunito(
                      // this didn't work
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            for (int i = 0; i < 9; i++)
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'aR аЯ',
                      style: TextStyle(
                        fontFamily: 'NunitoAsset',
                        fontSize: 64,
                        fontWeight: FontWeight.values.elementAt(i),
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Container(
                    height: 64.0,
                    width: 1.0,
                    color: Colors.black,
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  ),
                  Expanded(
                    child: Text(
                      'aR аЯ',
                      style: GoogleFonts.nunito(
                        // this didn't work
                        textStyle: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.values.elementAt(i),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            const Divider(
              thickness: 10,
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
