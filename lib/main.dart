import 'package:flutter/material.dart';
import 'package:my_chat/screens/chat_screen.dart';
import 'package:my_chat/screens/login_screen.dart';
import 'package:my_chat/screens/register_screen.dart';
import 'package:my_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyChat());
}

class MyChat extends StatelessWidget {
  MyChat({Key? key}) : super(key: key);
  final _auth = FirebaseAuth.instance;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My chat',
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRoute
          : WelcomeScreen.screenRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        WelcomeScreen.screenRoute: (context) => const WelcomeScreen(),
        LoginScreen.screenRoute: (context) => const LoginScreen(),
        RegisterScreen.screenRoute: (context) => const RegisterScreen(),
        ChatScreen.screenRoute: (context) => const ChatScreen(),
      },
    );
  }
}
