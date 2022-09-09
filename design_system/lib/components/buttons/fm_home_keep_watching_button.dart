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
      child: ElevatedButton(
        onPressed: () => {},
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
