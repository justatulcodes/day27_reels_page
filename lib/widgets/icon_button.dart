import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/values.dart';

Widget customIconButton(String svgAddress, Function() onClick) {
  return IconButton(
    onPressed: onClick,
    icon: SvgPicture.asset(
      svgAddress,
      height: iconButtonWidthHeight,
      width: iconButtonWidthHeight,
      color: iconButtonColor,
    ),
    splashRadius: 0.1,
    splashColor: Colors.transparent,
  );
}
