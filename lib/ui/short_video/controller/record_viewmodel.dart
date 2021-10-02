

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../../main.dart';

class RecordViewModel{
  CameraController _controller = CameraController(cameras[0], ResolutionPreset.max);
  // XFile? imageFile;
  // XFile? videoFile;
  VideoPlayerController? _videoController;
  // VoidCallback? videoPlayerListener;
  bool enableAudio = true;
  bool _isVideoRecording = false;
  bool _isFlashOpen = false;
  late Future<void> cameraValue;

  set videoController(VideoPlayerController? value) {
    _videoController = value;
  }

  bool get isFlashOpen => _isFlashOpen;

  bool _isCameraOutFacing = true;
  String _videoPath = "";
  Function(RecorderActions action) onUpdate;
  RecordViewModel({required this.onUpdate}){
   // initCameraValue();
  }
  void initCameraValue() async{
    await CameraController(cameras[0], ResolutionPreset.max).initialize();
  }

  Future<void> stopVideoRecording() async{
    _isVideoRecording = false;
    XFile path = await controller.stopVideoRecording();
    _videoPath = path.path;
    onUpdate(RecorderActions.updateCamera);

  }
  Future<void> startVideoRecording() async{
    if (controller.value.isRecordingVideo || _isVideoRecording) {
      // A recording is already started, do nothing.
      return;
    }
    _isVideoRecording = true;
    await controller.startVideoRecording();
    onUpdate(RecorderActions.updateCamera);
  }

  void toggleFlashLight(){
    _isFlashOpen = !isFlashOpen;
    onUpdate(RecorderActions.flash);
  }

  void toggleCameraFacing(){
    _isCameraOutFacing = !isCameraOutFacing;
    onUpdate(RecorderActions.reverse);
  }

  CameraController get controller => _controller;

  set controller(CameraController value) {
    _controller = value;
    onUpdate(RecorderActions.updateCamera);
  }

  String get videoPath => _videoPath;


  bool get isVideoRecording => _isVideoRecording;



  VideoPlayerController? get videoController => _videoController;


  bool get isCameraOutFacing => _isCameraOutFacing;

}

enum RecorderActions{
  flash,
  audio,
  reverse,
  updateCamera
}