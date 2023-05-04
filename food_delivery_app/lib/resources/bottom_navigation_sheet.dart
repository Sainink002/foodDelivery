import 'package:flutter/material.dart';
import 'Images.dart';

class BottomNavigationSheet {

  static void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 300,
          child: Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        image: DecorationImage(image: AssetImage(Images.locationImage), fit: BoxFit.fill)
                    ),

                    // child: Image.asset(images1[index], fit: BoxFit.fill, ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}