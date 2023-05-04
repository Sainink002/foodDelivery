import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class IntroImagesIndicator extends StatefulWidget {
  IntroImagesIndicator({Key? key, required this.images, required this.isCurrentIndex, required CarouselController? carouselController}) : super(key: key);
  final List<String> images;
  int isCurrentIndex;
  CarouselController? carouselController;

  @override
  State<IntroImagesIndicator> createState() => _IntroImagesIndicatorState();
}

class _IntroImagesIndicatorState extends State<IntroImagesIndicator> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: widget.images.asMap().entries.map((entry) {
          return Container(
           width: widget.isCurrentIndex == entry.key ? 42 : 45,
            height: 3.5,
            margin: const EdgeInsets.only(right: 2, left: 2),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                 color: widget.isCurrentIndex == entry.key
                    ? Colors.white
                    : Colors.grey
            ),
          );
        }).toList(),
      ),
    );
  }
}