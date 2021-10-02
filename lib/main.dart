
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'ui/short_video/short_video.dart';

List<CameraDescription> cameras = [];

void main() async{
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType)
        {
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              home: CameraExampleHome()//CameraExample(cameras: cameras,)//MainRecordScreen(cameras: cameras,)//Home()//RecipeScreen()//MiniDataScreen(title: 'Flutter Demo Home Page'),
          );
        });
  }
}