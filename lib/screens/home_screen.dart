import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    this.showMenu = true,
    required this.onPressed,
  }) : super(key: key);

  final bool showMenu;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: onPressed,
            icon: Padding(
              padding: EdgeInsets.only(top: showMenu ? 20.0 : 0),
              child: Icon(
                showMenu ? Icons.menu : Icons.close,
                color: Colors.white,
                size: showMenu ? 30 : 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
