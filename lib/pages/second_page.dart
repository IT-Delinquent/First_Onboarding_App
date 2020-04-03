import 'package:flutter/material.dart';
import 'package:onboarding_test/widgets/screen_content.dart';
import 'package:onboarding_test/widgets/forward_button.dart';
import 'package:onboarding_test/widgets/backward_button.dart';

class SecondPage extends StatelessWidget {
  final PageController controller;

  SecondPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xffff9a9e), const Color(0xfffad0c4)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GestureDetector(
            child: BackwardButton(),
            onTap: () {
              if (controller.hasClients) {
                controller.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
          ScreenContent(
            'assets/gears.flr',
            'In-consistent look across platforms?',
            'Flutter draws pixel perfect UIs and handles everything "under-the-hood"',
            'Turning',
          ),
          GestureDetector(
            child: ForwardButton(),
            onTap: () {
              if (controller.hasClients) {
                controller.animateToPage(
                  2,
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
