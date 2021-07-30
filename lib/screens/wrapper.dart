import 'package:amazonui/screens/home_screen/home_screen.dart';
import 'package:amazonui/screens/nav_screen.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          NavScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
