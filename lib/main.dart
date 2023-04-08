import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:quizsolver/camera_app.dart';

late List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();

  //log available cameras in a human readable format
  for (var camera in _cameras) {
    print('Camera: ${camera.name}');
    print('Lens Direction: ${camera.lensDirection}');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CameraApp(cameras: _cameras));
  }
}
