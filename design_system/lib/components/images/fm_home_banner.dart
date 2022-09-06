import 'package:flutter/material.dart';

class MovieBanner extends StatelessWidget {
  final String image;
  final double heigth;
  final double width;
  const MovieBanner({
    Key? key,
    required this.image,
    required this.heigth,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
