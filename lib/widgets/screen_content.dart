import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class ScreenContent extends StatefulWidget {
  //The location of the flare animation
  final String flareURL;
  //The title for the page
  final String title;
  //The text for the page
  final String text;
  //Text for the animation
  final String animationText;

  ScreenContent(this.flareURL, this.title, this.text, this.animationText);

  @override
  _ScreenContentState createState() => _ScreenContentState();
}

class _ScreenContentState extends State<ScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: FlareActor(
            widget.flareURL,
            animation: widget.animationText,
          ),
          height: 300,
          width: 300,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
