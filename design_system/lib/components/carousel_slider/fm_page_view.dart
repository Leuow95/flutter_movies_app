import 'package:flutter/material.dart';

class FMCarouselSlider extends StatefulWidget {
  const FMCarouselSlider({Key? key}) : super(key: key);

  @override
  State<FMCarouselSlider> createState() => _FMCarouselSliderState();
}

class _FMCarouselSliderState extends State<FMCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 8,
      physics: BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        return Container(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.ease,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        blurRadius: 30,
                        offset: Offset(30, 20))
                  ]),
            ),
          ),
        );
      }),
    );
  }
}
