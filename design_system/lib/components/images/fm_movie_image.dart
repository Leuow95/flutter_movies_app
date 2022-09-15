import 'package:flutter/material.dart';

class MovieImage extends StatefulWidget {
  final String image;
  final double scale;
  const MovieImage({
    required this.image,
    required this.scale,
    Key? key,
  }) : super(key: key);

  @override
  State<MovieImage> createState() => _MovieImageState();
}

class _MovieImageState extends State<MovieImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 15,
        left: 15,
        top: 100 - widget.scale * 25,
        bottom: 50,
      ),
      color: Colors.green,
      child: Image(
        image: NetworkImage(widget.image),
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
