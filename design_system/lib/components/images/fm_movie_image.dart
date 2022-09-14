import 'package:flutter/material.dart';

class MovieImage extends StatefulWidget {
  final bool active;
  final String image;
  const MovieImage({
    required this.image,
    required this.active,
    Key? key,
  }) : super(key: key);

  @override
  State<MovieImage> createState() => _MovieImageState();
}

class _MovieImageState extends State<MovieImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.only(top: 40, bottom: 50, right: 30),
          curve: Curves.ease,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(widget.image)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
