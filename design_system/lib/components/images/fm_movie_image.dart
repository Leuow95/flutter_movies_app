import 'package:flutter/material.dart';

class MovieImage extends StatefulWidget {
  final bool active;
  const MovieImage(
    this.active, {
    Key? key,
  }) : super(key: key);

  @override
  State<MovieImage> createState() => _MovieImageState();
}

class _MovieImageState extends State<MovieImage> {
  @override
  Widget build(BuildContext context) {
    final double blur = widget.active ? 30 : 0;
    final double offset = widget.active ? 20 : 0;
    final double top = widget.active ? 100 : 200;

    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.only(top: top, bottom: 50, right: 50),
          curve: Curves.ease,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: blur,
                  offset: Offset(offset, offset),
                )
              ]),
        ),
      ),
    );
  }
}
