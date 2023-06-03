import 'package:checkbox/widgets/circular_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/screen2.png"),
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 30,
          ),
          const CircularButton(
            text: "LOGIN",
            height: 60,
            width: 200,
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "SIGN UP",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RichText(
            text: TextSpan(
                text: "Already have an account? ",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: "Login",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => print('pressed1'),
                      style: const TextStyle(
                        color: Colors.amber,
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
