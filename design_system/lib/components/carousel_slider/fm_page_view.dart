import 'package:flutter/material.dart';

class FMCarouselSlider extends StatelessWidget {
  const FMCarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      itemBuilder: ((context, index) => Container(
            color: Colors.green,
            child: Center(
              child: Text("Page View funcionando"),
            ),
          )),
    );
  }
}
