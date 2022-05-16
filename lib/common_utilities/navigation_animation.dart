import 'package:flutter/material.dart';

Route createRout(Widget page, {String? name}) {
  return PageRouteBuilder(
    settings: name !=null ?RouteSettings(name: name):null,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end);
      var curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
    //transitionDuration: Duration(seconds: 2),
  );
}
