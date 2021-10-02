import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

import 'controller/record_controller.dart';
import 'controller/record_viewmodel.dart';

class RecordPreviewScreen extends StatefulWidget {
  const RecordPreviewScreen({Key? key}) : super(key: key);

  @override
  _RecordPreviewScreenState createState() => _RecordPreviewScreenState();
}

class _RecordPreviewScreenState extends State<RecordPreviewScreen> {
  var previewController = Get.find<RecordViewModel>();

  //late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    previewController.videoController = VideoPlayerController.
        file(File(previewController.videoPath))
      ..initialize().then((_) {
        previewController.videoController!.play();
        previewController.videoController!.setLooping(true);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: 100.h,
            width: MediaQuery.of(context).size.width,
            child: previewController
                    .videoController!.value.isInitialized
                ? AspectRatio(
                    aspectRatio: previewController
                        .videoController!.value.aspectRatio,
                    child: VideoPlayer(
                      previewController.videoController!,
                    ),
                  )
                : Container(
                    height: 100.h,
                    color: Colors.black,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    previewController.videoController!.dispose();
  }
}
