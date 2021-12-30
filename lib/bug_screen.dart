import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BugScreen extends StatefulWidget {
  const BugScreen({Key? key}) : super(key: key);

  @override
  _BugScreenState createState() => _BugScreenState();
}

class _BugScreenState extends State<BugScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SizedBox.expand(
        child: Column(
          children: [
            const Divider(
              thickness: 10,
            ),
            const Text(
              ' Регистрация Nunito(font from asset) - it works',
              style: TextStyle(
                fontFamily: 'NunitoAsset',
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            Text(
              'Регистрация Nunito - did not work',
              style: GoogleFonts.nunito(
                // this didn't work
                textStyle: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            Text(
              'Регистрация Lobster(font from GoogleFonts) - the same config works',
              style: GoogleFonts.lobster(
                // this works!!!!
                textStyle: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
