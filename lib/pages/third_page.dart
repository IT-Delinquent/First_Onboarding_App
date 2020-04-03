import 'package:flutter/material.dart';
import 'package:onboarding_test/widgets/backward_button.dart';
import 'package:onboarding_test/widgets/screen_content.dart';

class ThirdPage extends StatelessWidget {
  final PageController controller;

  ThirdPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xff6190E8), const Color(0xffA7BFE9)],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ScreenContent(
            'assets/space.flr',
            'In-consistent look across platforms?',
            'Flutter draws pixel perfect UIs and handles everything "under-the-hood"',
            'Animate',
          ),
          GestureDetector(
            child: BackwardButton(),
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
