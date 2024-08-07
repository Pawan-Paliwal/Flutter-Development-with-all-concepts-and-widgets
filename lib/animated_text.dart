import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class animatedtext extends StatelessWidget {
  const animatedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.access_alarm_sharp,
              color: Colors.white,
            ), // Replace with any icon you prefer
            SizedBox(width: 8), // Add some space between the icon and the text
            Text(
              'Animated Text flutter',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('My Name is Pawan Paliwal',
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  speed: Duration(milliseconds: 400))
            ],
            totalRepeatCount: 4,
            pause: Duration(milliseconds: 2000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
    );
  }
}
