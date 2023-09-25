import 'package:flutter/material.dart';

Widget profileCircle(double size, String imageAddress) {
  return SizedBox(
    width: size,
    height: size,
    child: Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: ClipOval(child: Image.asset(imageAddress)),
    ),
  );
}
