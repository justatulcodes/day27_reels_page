import 'package:day27_reels_page/data/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget detailCard(String svgAddress, String infoText, double size) {
  return Card(
    elevation: 0,
    color: infoCardBackgroundColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgAddress,
            height: size,
            width: size,
            color: iconButtonColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            infoText,
            style: const TextStyle(
                fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
    ),
  );
}
