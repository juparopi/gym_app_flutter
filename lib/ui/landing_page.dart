import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
   LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Gym Metric"),
          MaterialButton(
            onPressed: () async {
              /**
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LogIn()
                ),
              );
              */
            },
            child: const Text(
              "Log In"
            ),
          ),
          MaterialButton(
            onPressed: () async {
              /**
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Register()
                ),
              );
              */
            },
            child: const Text(
              "Register"
            ),
          ),
        ],
      ),
    );
  }
}