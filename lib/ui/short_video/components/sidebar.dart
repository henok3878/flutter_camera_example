import 'package:flutter/material.dart';
import 'package:flutter_camera_example/ui/short_video/controller/record_viewmodel.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class CameraSidebar extends StatelessWidget {

  CameraSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RecordViewModel recordViewModel = Get.find<RecordViewModel>();
    print("SideBar build called ");
    return  SizedBox(
      height: 35.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
             children: [
               GestureDetector(
                 child: SvgPicture.asset(
                   'assets/song.svg',
                   height: 33,
                 ),
               ),
             ],
           ),
          Column(
            children: [
              GestureDetector(
                child: SvgPicture.asset('assets/threelines.svg'),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                child: SvgPicture.asset(
                  'assets/speedometer.svg',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                child: SvgPicture.asset(
                  'assets/camerareverse.svg',
                  color: Colors.white,
                ),
                onTap: () async {
                 recordViewModel.toggleCameraFacing();
                }),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                child: Container(
                  child: recordViewModel.isFlashOpen
                        ? const Icon(
                      Icons.flash_on,
                      color: Colors.white,
                      size: 35,
                    ) : SvgPicture.asset(
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
        ],
      ),
    );
  }
}
