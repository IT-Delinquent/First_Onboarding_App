import 'package:flutter/material.dart';
import 'package:onboarding_test/widgets/screen_content.dart';
import 'package:onboarding_test/widgets/forward_button.dart';

class FirstPage extends StatelessWidget {
  final PageController controller;

  FirstPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xff654ea3), const Color(0xffeaafc8)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ScreenContent(
            'assets/loading.flr',
            'Ever seen this before?',
            'With Flutter, loading times are drastically reduced!',
            'Loading',
          ),
          GestureDetector(
            child: ForwardButton(),
            onTap: () {
              if (controller.hasClients) {
                controller.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
