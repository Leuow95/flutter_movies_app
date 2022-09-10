import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        drawer: const Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("HomePage"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: const [
                  MovieBanner(
                    image: 'https://picsum.photos/250?image=9',
                    heigth: 192,
                    width: 340,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: KeepWatchingButton(title: "titulo"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
