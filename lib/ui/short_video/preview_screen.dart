import 'package:flutter/material.dart';
import 'package:kowi_fashion/ui/screens/short_video/record_preview_screen.dart';
import 'package:sizer/sizer.dart';

import 'control_preview_screen.dart';

class PreviewScreen extends StatelessWidget {
  static const String routeName = "/preview_screen";

  //const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        //color: Color.fromRGBO(10, 10, 10, 0.3),
        child: Stack(
          children: [
            RecordPreviewScreen(),
            ControlPreviewScreen(),
          ],
        ),
      ),
    );
  }
}
