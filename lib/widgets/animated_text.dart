import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animated Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          AnimatedTextKit(animatedTexts: [
            TypewriterAnimatedText('Enan Abdullah Khan',
                textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),speed: Duration(milliseconds: 150))
          ])
        ],
      ),
    );
  }
}
