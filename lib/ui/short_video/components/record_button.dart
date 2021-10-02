import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_example/ui/short_video/controller/record_viewmodel.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../preview_screen.dart';

class RecordButton extends StatelessWidget {

  const RecordButton({ Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    RecordViewModel recordViewModel = Get.find<RecordViewModel>();

    return Stack(
      children: [
        Center(
          child: recordViewModel.isVideoRecording
                ?const Icon(
              Icons.panorama_fish_eye,
              size: 80,
              color: Colors.red,
            )
                : const Icon(
              Icons.panorama_fish_eye,
              size: 20,
              color: Colors.red,
            ),

        ),
        Center(
          child: GestureDetector(
            child: const CircleAvatar(
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
