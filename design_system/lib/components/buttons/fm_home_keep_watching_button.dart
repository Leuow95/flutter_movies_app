import 'dart:ui';

import 'package:flutter/material.dart';

class KeepWatchingButton extends StatelessWidget {
  final String title;

  const KeepWatchingButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 220,
      decoration: BoxDecoration(
        color: Color(0xffDADADA).withOpacity(0.6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4,
            sigmaY: 4,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Icon(Icons.play_arrow),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Continue Watching"),
                    Text("Ready Player One"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
