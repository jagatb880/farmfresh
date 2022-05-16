import 'dart:async';
import 'package:farmfresh/common_utilities/navigation_animation.dart';
import 'package:farmfresh/intro_slider.dart';
import 'package:farmfresh/ui_controllers/dashboard.dart';
import 'package:flutter/material.dart';
import 'app_constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farmfresh',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        backgroundColor: kPrimary,
        appBarTheme: AppBarTheme(brightness: Brightness.light),
        primarySwatch: kPrimaryColor,
        accentColor: kButtonColor,
        fontFamily: kFontPrimary,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    startTime(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimary,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage("assets/images/splash_screen.jpg"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }

  startTime(BuildContext context) async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(createRout(IntroSliderPage(), name: "/intro"));
    });
  }

  // Future<void> getThingsOnStartup(BuildContext context) async {
  //   User? user = await AppHelper().getUser();
  //   if (user == null) {
  //     Navigator.of(context).pushReplacement(createRout(
  //       BlocProvider(
  //         create: (context) => LoginBloc(),
  //         child: LoginPage(),
  //       ),
  //     ));
  //   } else {
  //     Navigator.of(context)
  //         .pushReplacement(createRout(DashboardPage(), name: "/home"));
  //   }
  // }
}
