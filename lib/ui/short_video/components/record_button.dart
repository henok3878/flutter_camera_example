import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kowi_fashion/ui/screens/short_video/controller/record_controller.dart';
import 'package:kowi_fashion/ui/screens/short_video/controller/record_viewmodel.dart';
import 'package:sizer/sizer.dart';

import '../preview_screen.dart';

class RecordButton2 extends StatelessWidget {

  const RecordButton2({ Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    RecordViewModel recordViewModel = Get.find<RecordViewModel>();

    return Stack(
      children: [
        Center(
          child: recordViewModel.isVideoRecording
                ? Icon(
              Icons.panorama_fish_eye,
              size: 80,
              color: Colors.red,
            )
                : Icon(
              Icons.panorama_fish_eye,
              size: 20,
              color: Colors.red,
            ),

        ),
        Center(
          child: GestureDetector(
            child: CircleAvatar(
              radius: 30,
              foregroundColor: Colors.white,
              backgroundColor: Colors.white,
            ),
            onLongPress: () async {
              print('Start');
              await recordViewModel.startVideoRecording();
            },
            onLongPressUp: () async {
              print('Stop');
              await recordViewModel.stopVideoRecording();
              print("Navigate to preview screen");
              Navigator.push(context, MaterialPageRoute(builder: (_)=>PreviewScreen()));
            },
          ),
        ),
      ],
    );
  }
}
