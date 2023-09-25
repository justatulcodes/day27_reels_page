import 'package:day27_reels_page/data/values.dart';
import 'package:day27_reels_page/list_items/reel_itemview.dart';
import 'package:day27_reels_page/widgets/bottom_nav_icon.dart';
import 'package:day27_reels_page/widgets/profile_icon.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final bottomNavBarHeight = kBottomNavigationBarHeight;
    final availableScreenHeight =
        screenSize.height - statusBarHeight - bottomNavBarHeight;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          iconSize: iconButtonWidthHeight,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: iconButtonColor,
          unselectedItemColor: iconButtonColor,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            customBottomNavigationIcon("assets/images/home.svg"),
            customBottomNavigationIcon("assets/images/search.svg"),
            customBottomNavigationIcon("assets/images/add_post.svg"),
            customBottomNavigationIcon("assets/images/reels.svg"),
            BottomNavigationBarItem(
                icon: profileCircle(35, "assets/images/profile.png"), label: '')
          ],
        ),
      ),
      //   body: InViewNotifierList(
      //       isInViewPortCondition: (double deltaTop, double deltaBottom,
      //           double viewPortDimension) {
      //         return deltaTop < (0.5 * viewPortDimension) &&
      //             deltaBottom > (0.5 * viewPortDimension);
      //       },
      //       builder: ((context, index) {
      //         return ReelItemview(index: index);
      //       }),
      //       itemCount: vidList.length),
      // ),
      body: ListView.builder(
          itemBuilder: ((context, index) {
            return ReelItemview(index: index);
          }),
          itemExtent: availableScreenHeight,
          itemCount: 4),
      // body: ReelItemview(index: index,),
    ));
  }
}
