import 'package:chewie/chewie.dart';
import 'package:day27_reels_page/data/values.dart';
import 'package:day27_reels_page/widgets/detail_card.dart';
import 'package:day27_reels_page/widgets/icon_button.dart';
import 'package:day27_reels_page/widgets/profile_icon.dart';
import 'package:day27_reels_page/widgets/square_music_photo.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReelItemview extends StatefulWidget {
  final int index;

  const ReelItemview({super.key, required this.index});

  @override
  State<ReelItemview> createState() => _ReelItemviewState();
}

class _ReelItemviewState extends State<ReelItemview> {
  late ChewieController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ChewieController(
        videoPlayerController:
            VideoPlayerController.asset(vidList[widget.index]),
        autoInitialize: true,
        aspectRatio: 9 / 16,
        looping: true,
        allowFullScreen: false,
        autoPlay: true,
        draggableProgressBar: false,
        showControls: false);
  }

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onDoubleTap: () {
            _controller.play();
          },
          child: Center(
            child: Chewie(
              controller: _controller,
            ),
          ),
        ),
        Center(
          child: Text(
            widget.index.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Reels",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  customIconButton("assets/images/camera.svg", () => null),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customIconButton("assets/images/like.svg", () => null),
                  const Text(
                    "13.3K",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customIconButton("assets/images/comment.svg", () => null),
                  const Text(
                    "878",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileCircle(40, "assets/images/profile.png"),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "jiojanta",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          splashFactory: NoSplash.splashFactory,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 0),
                          side: const BorderSide(color: Colors.white, width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text(
                        "Follow",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customIconButton("assets/images/share.svg", () => null),
                      const Text(
                        "3.5K",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "OMG I got so many gifts it free",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Liked by gauraman07 and 4k others.",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.white60),
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                    splashRadius: 0.1,
                    splashColor: Colors.transparent,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  detailCard("assets/images/music.svg", "Anything music", 12),
                  detailCard("assets/images/user.svg", "user", 16),
                  const Spacer(),
                  musicButton("assets/images/profile.png")
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
