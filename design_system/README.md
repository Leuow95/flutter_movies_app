<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

This design system gives an example of widgets to be used in the application.
The Flutter Movies App have 3 different pages(Home, Discover and Details), that is detailed below
- HOME_PAGE
  - Text
  - Banner(KeepWatchingButton, Icon, MovieName)
  - Text
  - PageView(Container(Image, Rating[Icon, Rating], Title))
  - BottomNavBar(Icons)

- DISCOVER_PAGE
  - Text
  - Search(Icon, placeholder)
  - TabBar()
  - GridView(Container[ImageMovie], Text[ImageName])

- DETAILS_PAGE
  - VideoSection(SliverVideo, Title, Quality, Duration, Rating )
  - ReleaseSection(title, Date Release, GenreTitle, CategoryContainers)
  - SynopsysSection(title, Description)
  - RelatedSection(Title, PageView)
## Getting started

After cloning the project, I recommend to use the version 3.0.5 of Flutter.
To run the project in your machine, run the command `flutter pub get` or `fvm flutter pub get`
if you are using the fvm.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
