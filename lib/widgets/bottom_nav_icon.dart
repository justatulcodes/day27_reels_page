import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/values.dart';

BottomNavigationBarItem customBottomNavigationIcon(String iconAddress) {
  return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconAddress,
        height: iconButtonWidthHeight,
        width: iconButtonWidthHeight,
        color: iconButtonColor,
      ),
      label: '',);
}

