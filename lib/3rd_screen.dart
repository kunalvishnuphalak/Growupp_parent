import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
// import 'package:growupp_parent/1st_screen.dart';
import 'package:growupp_parent/2nd_screen.dart';
import 'package:growupp_parent/bottomnav.dart';
import 'package:growupp_parent/dashboard.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Image.asset(
        'assets/images/screen_3.png',
        height: 680,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: DotsIndicator(
          dotsCount: 3,
          decorator: DotsDecorator(
              size: const Size.fromRadius(8),
              activeColor: Color.fromRGBO(74, 42, 81, 1),
              activeSize: const Size(18, 18),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),

      // 
      Container(
        child: FloatingActionButton.extended(
          backgroundColor: Color.fromRGBO(74, 42, 81, 1),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomNav()));
          },
          icon: const Icon(Icons.keyboard_double_arrow_right),
          label: Text("Get Started"),
        ),
      )
    ]));
  }
}
