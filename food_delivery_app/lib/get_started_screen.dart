import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/resources/Images.dart';
import 'package:food_delivery_app/resources/Strings.dart';
import 'package:food_delivery_app/resources/bottom_navigation_bar.dart';
import 'carouselSlider.dart';
import 'intro_ImageI_ndicator.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

/// list for scrolling intro image.
final List<String> images = [
  Images.graphic1,
  Images.graphic2,
  Images.graphic3,
];

int isCurrentIndex = 0;
int isIndex = 0;
CarouselController? carouselController = CarouselController();

class _IntroScreenState extends State<IntroScreen> {
  ///Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      body: Column(
          children: [
        Stack(
          children: [
            CarouselImagesSlider(
                images: images,
                carouselController: carouselController,
                onPageChanged: (index, reason) =>
                  setState(() {
                    isCurrentIndex = index;
                    carouselController?.animateToPage(index);
                  })
                ),
          ],
        ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, bottom: 10, right: 20),
              child: Text(
                Strings.orderGreatFood,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600, fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
              child: IntroImagesIndicator(images: images, isCurrentIndex: isCurrentIndex, carouselController: carouselController),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBottomNavigationBar()),
                  );
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Center(
                    child: Text(
                      Strings.startOrdering,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
      ]),
    );
  }
}
