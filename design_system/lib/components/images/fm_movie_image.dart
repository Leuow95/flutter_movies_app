import 'package:flutter/material.dart';

class MovieImage extends StatefulWidget {
  final String image;

  const MovieImage({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  State<MovieImage> createState() => _MovieImageState();
}

class _MovieImageState extends State<MovieImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(widget.image),
            fit: BoxFit.fitHeight,
          )),
    );
  }
}
