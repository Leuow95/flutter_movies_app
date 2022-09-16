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
      // padding: EdgeInsets.all(8),
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: MovieImage(
            image:
                "https://i.picsum.photos/id/1025/4951/3301.jpg?hmac=_aGh5AtoOChip_iaMo8ZvvytfEojcgqbCH7dzaz-H8Y",
          ),
        );
      }),
    );
  }
}
