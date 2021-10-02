import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kowi_fashion/main.dart';
import 'package:kowi_fashion/ui/screens/short_video/controller/record_viewmodel.dart';
import 'package:sizer/sizer.dart';
class CameraSidebar extends StatelessWidget {

  CameraSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RecordViewModel recordViewModel = Get.find<RecordViewModel>();
    return Container(
      height: 35.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/song.svg',
                      height: 33,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    child: SvgPicture.asset('assets/threelines.svg'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/speedometer.svg',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/camerareverse.svg',
                      color: Colors.white,
                    ),
                  ),
                  onTap: () async {
                   recordViewModel.toggleCameraFacing();
                  }),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    child: recordViewModel.isFlashOpen
                          ? Icon(
                        Icons.flash_on,
                        color: Colors.white,
                        size: 35,
                      )
                          : SvgPicture.asset(
                        'assets/flash.svg',
                        color: Colors.white,
                      ),
                  ),
                  onTap: () {
                    recordViewModel.toggleFlashLight();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
