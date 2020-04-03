import 'package:flutter/material.dart';

class ForwardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Icon(
            Icons.arrow_forward,
            size: 36,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
