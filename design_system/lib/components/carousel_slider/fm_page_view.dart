import 'package:design_system/components/images/fm_movie_image.dart';
import 'package:flutter/material.dart';

class FMCarouselSlider extends StatefulWidget {
  const FMCarouselSlider({Key? key}) : super(key: key);

  @override
  State<FMCarouselSlider> createState() => _FMCarouselSliderState();
}

class _FMCarouselSliderState extends State<FMCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: ((context, index) {
        return MovieImage(
          image: "https://picsum.photos/250?image=4",
        );
      }),
    );
  }
}
