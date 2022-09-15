import 'dart:math';

import 'package:design_system/components/images/fm_movie_image.dart';
import 'package:flutter/material.dart';

class FMCarouselSlider extends StatefulWidget {
  const FMCarouselSlider({Key? key}) : super(key: key);

  @override
  State<FMCarouselSlider> createState() => _FMCarouselSliderState();
}

class _FMCarouselSliderState extends State<FMCarouselSlider> {
  late PageController pageController;
  double pageOffset = 0;
  double viewPortFraction = 0.8;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 2,
      viewportFraction: viewPortFraction,
    )..addListener(() {
        setState(() {
          pageOffset = pageController.page!;
        });
      });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: 8,
      physics: BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        double scale = (max(viewPortFraction, 1 - (pageOffset - index).abs()) +
            viewPortFraction);
        return MovieImage(
          image: "https://picsum.photos/250?image=9",
          scale: scale,
        );
      }),
    );
  }
}
