import 'dart:ui';

import 'package:flutter/material.dart';

import 'widget/bottom_bar.dart';
import 'widget/headWidget.dart';
import 'widget/propular_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size deviceData = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF202F40),
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.loose,
            children: [
              Container(
                color: Colors.white,
                height: 850,
              ),
              HeadWidget(),
              Positioned(
                top: 350,
                left: 0,
                right: 0,
                bottom: 0,
                child: PopularProduct(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
