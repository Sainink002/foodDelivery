import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImagesSlider extends StatefulWidget {
  CarouselImagesSlider({Key? key, required this.images, required  this.onPageChanged, required  this.carouselController}) : super(key: key);
  final List<String> images;
  final Function(int, CarouselPageChangedReason) onPageChanged;
  CarouselController? carouselController;

  @override
  State<CarouselImagesSlider> createState() => _CarouselImagesSliderState();
}

class _CarouselImagesSliderState extends State<CarouselImagesSlider> {

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.images.map((item) =>
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(item)
                )
            ))).toList();
    return CarouselSlider(
      items: imageSliders,
      carouselController: widget.carouselController,
      options: CarouselOptions(
          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
          height: MediaQuery
              .of(context)
              .size
              .height / 1.7,
          autoPlay: true,
          enlargeCenterPage: false,
          viewportFraction: 1.0,
          onPageChanged: widget.onPageChanged),
    );
  }
}
