// import 'package:farmfresh/ui_controllers/dashboard.dart';
// import 'package:flutter/material.dart';
// import 'package:intro_slider/slide_object.dart';
// import 'package:intro_slider/dot_animation_enum.dart';
// import 'package:intro_slider/intro_slider.dart';

// class IntroSliderPage extends StatefulWidget {
//   const IntroSliderPage({Key? key}) : super(key: key);

//   @override
//   State<IntroSliderPage> createState() => _IntroSliderPageState();
// }

// class _IntroSliderPageState extends State<IntroSliderPage> {
//   List<Slide> slides = List<Slide>.empty();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     slides.add(
//       new Slide(pathImage: "assets/images/splash_screen.jpg"),
//     );
//     slides.add(
//       new Slide(pathImage: "assets/images/splash_screen.jpg"),
//     );
//     slides.add(
//       new Slide(pathImage: "assets/images/splash_screen.jpg"),
//     );
//   }

//   List<Widget> renderListCustomTabs() {
//     List<Widget> tabs = List<Widget>.empty();
//     for (int i = 0; i < slides.length; i++) {
//       Slide currentSlide = slides[i];
//       tabs.add(
//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           child: Container(
//             margin: EdgeInsets.only(bottom: 160, top: 60),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Colors.white,
//                   ),
//                   child: Image.asset(
//                     currentSlide.title,
//                     matchTextDirection: true,
//                     height: 60,
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 20),
//                   child: Text(
//                     currentSlide.title,
//                     style: TextStyle(color: Colors.white, fontSize: 25),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 30,
//                   ),
//                   child: Text(
//                     currentSlide.description,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                       height: 1.5,
//                     ),
//                     maxLines: 3,
//                     textAlign: TextAlign.center,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   margin: EdgeInsets.only(
//                     top: 15,
//                     left: 20,
//                     right: 20,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     }
//     return tabs;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IntroSlider(
//       backgroundColorAllSlides: Colors.green[700],
//       renderSkipBtn: Text("Skip"),
//       renderNextBtn: Text(
//         "Next",
//         style: TextStyle(color: Colors.green[700]),
//       ),
//       renderDoneBtn: Text(
//         "Done",
//         style: TextStyle(color: Colors.green[700]),
//       ),
//       // colorDoneBtn: Colors.white,
//       colorActiveDot: Colors.white,
//       sizeDot: 8.0,
//       typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
//       listCustomTabs: this.renderListCustomTabs(),
//       scrollPhysics: BouncingScrollPhysics(),
//       // shouldHideStatusBar: false,
//       onDonePress: () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (_) => DashboardPage(),
//         ),
//       ),
//     );
//   }
// }

import 'package:farmfresh/common_utilities/navigation_animation.dart';
import 'package:farmfresh/ui_controllers/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroSliderPageState();
  }
}

class IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
      renderSkipBtn: renderSkipBtn(),
      renderNextBtn: renderNextBtn(),
      renderDoneBtn: renderDoneBtn(),
    );
  }

  Widget renderSkipBtn() {
    return const Text(
      "SKIP",
      style: TextStyle(color: Color.fromRGBO(159, 99, 59, 1.0), fontSize: 16.0),
    );
  }

  Widget renderNextBtn() {
    return const Text(
      "NEXT",
      style: TextStyle(color: Color.fromRGBO(159, 99, 59, 1.0), fontSize: 16.0),
    );
  }

  Widget renderDoneBtn() {
    return const Text(
      "DONE",
      style: TextStyle(color: Color.fromRGBO(159, 99, 59, 1.0), fontSize: 16.0),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add(Slide(
        description: "Organic vegetables and healthy living.",
        styleDescription: const TextStyle(
            color: Color.fromRGBO(159, 99, 59, 1.0),
            fontSize: 18.0,
            fontWeight: FontWeight.w600),
        pathImage: "assets/images/slider_1.jpg",
        widthImage: 300.0,
        heightImage: 380.0,
        backgroundColor: const Color.fromRGBO(209, 239, 239, 1.0)));
    listSlides.add(Slide(
        description: "Organic vegetables and healthy living.",
        styleDescription: const TextStyle(
            color: Color.fromRGBO(159, 99, 59, 1.0),
            fontSize: 18.0,
            fontWeight: FontWeight.w600),
        pathImage: "assets/images/slider_1.jpg",
        widthImage: 300.0,
        heightImage: 380.0,
        backgroundColor: const Color.fromRGBO(209, 239, 239, 1.0)));
    listSlides.add(Slide(
        description: "Organic vegetables and healthy living.",
        styleDescription: const TextStyle(
            color: Color.fromRGBO(159, 99, 59, 1.0),
            fontSize: 18.0,
            fontWeight: FontWeight.w600),
        pathImage: "assets/images/slider_1.jpg",
        widthImage: 300.0,
        heightImage: 380.0,
        backgroundColor: const Color.fromRGBO(209, 239, 239, 1.0)));
  }

  onPressedDone() {
    Navigator.of(context)
        .pushReplacement(createRout(DashboardPage(), name: "/home"));
  }
}
