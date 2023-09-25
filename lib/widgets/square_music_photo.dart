import 'package:flutter/material.dart';

Widget musicButton(String imageAddress) {
  const double size = 30;
  const double radius = 6;

  return Container(
    width: size,
    height: size,
    margin: const EdgeInsets.only(right: 6),
    child: OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          padding: const EdgeInsets.all(0),
          side: const BorderSide(color: Colors.white, width: 2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.asset(
          imageAddress,
        ),
      ),
    ),
  );
}
