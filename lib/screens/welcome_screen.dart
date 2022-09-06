import 'package:flutter/material.dart';
import 'package:my_chat/screens/login_screen.dart';
import 'package:my_chat/screens/register_screen.dart';
import '../cuts/MyButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String screenRoute = 'welcome screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  child: Image.asset('images/images.png'),
                ),
                const Text(
                  'My chat',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  color: Colors.lightBlue,
                  title: 'sign in',
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.screenRoute);
                  },
                ),
                MyButton(
                  color: Colors.green,
                  title: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.screenRoute);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
