import 'package:design_system/components/images/fm_movie_image.dart';
import 'package:flutter/material.dart';

class FMCarouselSlider extends StatefulWidget {
  const FMCarouselSlider({Key? key}) : super(key: key);

  @override
  State<FMCarouselSlider> createState() => _FMCarouselSliderState();
}

class _FMCarouselSliderState extends State<FMCarouselSlider> {
  final pageController = PageController(viewportFraction: 0.75);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        setState(() {
          currentPage = position;
        });
      }
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
      itemCount: 8,
      physics: BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        final bool active = index == currentPage;
        return MovieImage(
          active: active,
          image: "https://picsum.photos/250?image=9",
        );
      }),
    );
  }
}
