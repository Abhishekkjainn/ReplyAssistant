import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:replyassistant/controllers/colorController.dart';
import 'package:replyassistant/controllers/mainController.dart';
import 'package:replyassistant/screens/Loginpage.dart';
import 'package:replyassistant/screens/homepage.dart';
import 'package:get_storage/get_storage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final login = GetStorage();
List Screens = [HomePage()];

class _HomeState extends State<Home> {
  ColorController colorController = Get.find();
  Maincontroller maincontroller = Get.find();
  String loggedin = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login.hasData('loggedin')
        ? loggedin = login.read('loggedin')
        : login.write('loggedin', 'false');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.background,
      appBar: MainAppBar(),
      body: (login.read('loggedin') == 'true') ? HomePage() : LoginPage(),
      extendBody: true,
    );
  }

  AppBar MainAppBar() {
    return AppBar(
      backgroundColor: colorController.background,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/coin.png'),
                    width: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Credits - ${maincontroller.CreditsLeft}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
      title: Row(
        children: [
          Image(
            image: AssetImage('assets/images/logo.png'),
            width: 25,
          ),
          SizedBox(
            width: 8,
          ),
          // Text(
          //   'Reply AI',
          //   style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 18,
          //       fontWeight: FontWeight.w800),
          // ),
        ],
      ),
    );
  }
}
