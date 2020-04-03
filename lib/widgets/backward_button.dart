import 'package:flutter/material.dart';

class BackwardButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Icon(
            Icons.arrow_back,
            size: 36,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
