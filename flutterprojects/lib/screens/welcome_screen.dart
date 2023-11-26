import 'package:demo1/screens/login_screen.dart';
import 'package:demo1/screens/registration_screen.dart';
import 'package:demo1/widgets/custom_scaffold.dart';
import 'package:demo1/widgets/welcome_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Flexible(
            child: Container(
          child: Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Welcome Back!\n',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: 'Fill your Cart with Stuffs',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400))
                  ]))),
        )),
        const Flexible(
            flex: 5,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(
                        color: Colors.transparent,
                        buttonText: 'Login',
                        onTap: LoginScreen(),
                        textColor: Colors.white70),
                  ),
                  Expanded(
                    child: WelcomeButton(
                        color: Colors.white,
                        buttonText: 'Sign Up',
                        onTap: RegistrationScreen(),
                        textColor: Colors.blue),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
