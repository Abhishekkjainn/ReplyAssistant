import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:replyassistant/controllers/colorController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController contentController = TextEditingController();
  ColorController colorController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Upload Chat Screenshots',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image(
                      image: AssetImage('assets/images/ss.png'),
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage('assets/images/wp.png'),
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage('assets/images/instagram.png'),
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage('assets/images/telegram.png'),
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage('assets/images/facebook.png'),
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage('assets/images/messenger.png'),
                    width: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
              child: Image(
                image: AssetImage('assets/images/showcas.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.blue, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.photo_fill_on_rectangle_fill,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Upload Screenshot',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: Container(
                width: double.maxFinite,
                height: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 28, 28),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/coin.png'),
                      width: 20,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Get Free Credits',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}




// Padding(
//               padding: const EdgeInsets.only(left: 30, right: 30),
//               child: TextFormField(
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600),
//                 controller: contentController,
//                 maxLines: null,
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(
//                       CupertinoIcons.pencil_circle_fill,
//                       color: Colors.blue,
//                       size: 18,
//                     ),
//                     suffixIcon: GestureDetector(
//                       onTap: () {
//                         print(contentController.text.toString());
//                       },
//                       child: Icon(
//                         CupertinoIcons.paperplane_fill,
//                         color: Colors.green,
//                         size: 16,
//                       ),
//                     ),
//                     hintText:
//                         'Hey Please Explain your Services as a Developer?',
//                     hintStyle: TextStyle(
//                         color: const Color.fromARGB(255, 89, 89, 89),
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600),
//                     label: Text(
//                       'Enter Content',
//                       style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.white, width: 2)),
//                     enabled: true,
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(color: Colors.blue, width: 2))),
//               ),
//             ),
//             SizedBox(
//               height: 120,
//             )
