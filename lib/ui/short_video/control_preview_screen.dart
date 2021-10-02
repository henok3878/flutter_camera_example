import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'components/bottom_bar.dart';
import 'controller/record_controller.dart';

class ControlPreviewScreen extends StatefulWidget {
  const ControlPreviewScreen({Key? key}) : super(key: key);

  @override
  _ControlPreviewScreenState createState() => _ControlPreviewScreenState();
}

class _ControlPreviewScreenState extends State<ControlPreviewScreen> {
  var previewController = Get.find<RecordController>();
  bool videoPlaying = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 7.h,
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                GestureDetector(
                  child: Container(
                    //width: 10.w,
                    padding: EdgeInsets.only(top: 30, right: 10),
                    child: SvgPicture.asset('assets/svg/cancel.svg'),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
          Container(
            height: 86.h,
            child: InkWell(
              child: Container(
                height: 86.h,
                child: Center(
                  child: videoPlaying
                      ? Container()
                      : Icon(
                          Icons.play_arrow_rounded,
                          size: 60,
                          color: Colors.white,
                        ),
                  // child: Obx(
                  //   () => previewController
                  //               .videoPlayerController.value.value.isPlaying

                  //       ? Icon(
                  //           Icons.car_rental,
                  //           color: Colors.white,
                  //           size: 40,
                  //         )
                  //       : Icon(
                  //           Icons.play_arrow_rounded,
                  //           color: Colors.white,
                  //           size: 40,
                  //         ),
                  // ),
                ),
              ),
              onTap: () {
                print('heypause');
                setState(() {
                  previewController.videoPlayerController.value.value.isPlaying
                      ? videoPlaying = false
                      : videoPlaying = true;
                });
                videoPlaying
                    ? previewController.videoPlayerController.value.play()
                    : previewController.videoPlayerController.value.pause();
                print(previewController
                    .videoPlayerController.value.value.isPlaying);
              },
            ),
          ),

          // GestureDetector(
          //   child:
          //       // previewController
          //       //         .videoPlayerController.value.value.isInitialized
          //       //     ?
          //       Container(
          //     height: 86.h,
          //     width: MediaQuery.of(context).size.width,
          //     child: Obx(
          //       () => previewController
          //               .videoPlayerController.value.value.isPlaying
          //           ? Container(
          //               height: 86.h,
          //               color: Colors.transparent,
          //               child: Icon(
          //                 Icons.paragliding,
          //                 color: Colors.white,
          //                 size: 40,
          //               ),
          //             )
          //           : GestureDetector(
          //               child: Container(
          //                 height: 86.h,
          //                 child: Icon(
          //                   Icons.play_arrow_rounded,
          //                   color: Colors.white,
          //                   size: 40,
          //                 ),
          //               ),
          //               onTap: () {
          //                 print('heypause');
          //                 previewController
          //                         .videoPlayerController.value.value.isPlaying
          //                     ? previewController.videoPlayerController.value
          //                         .pause()
          //                     : previewController.videoPlayerController.value
          //                         .play();
          //                 print('heyoneplay');
          //               },
          //             ),
          //     ),
          //     // child: previewController
          //     //         .videoPlayerController.value.value.isPlaying
          //     //     ? Container()
          //     //     : Icon(
          //     //         Icons.play_arrow_rounded,
          //     //         color: Colors.white,
          //     //         size: 30,
          //     //       ),
          //   ),

          //   // : Container(),
          // ),
          Container(
            height: 7.h,
            child: BottomBar(),
          )
        ],
      ),
    );
  }
}
