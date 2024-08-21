import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:replyassistant/Home.dart';
import 'package:replyassistant/controllers/colorController.dart';
import 'package:replyassistant/controllers/mainController.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ColorController colorController = Get.put(ColorController());
    Maincontroller mainController = Get.put(Maincontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DMSans'),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Redirect to Home() after 4 seconds
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(() => Home());
    });
  }

  @override
  Widget build(BuildContext context) {
    ColorController colorController = Get.find();
    return Scaffold(
        backgroundColor: colorController.background,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 60,
                ),
              ),
              GradientText(
                'Reply AI',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w800,
                ),
                colors: [
                  Colors.blue,
                  Colors.teal,
                  const Color.fromARGB(255, 0, 92, 83),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Turn Replies into Opportunities',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 121, 121, 121),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ));
  }
}
