import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizsolver/quiz_solver.dart';

late List<CameraDescription> _cameras;

class CameraApp extends StatefulWidget {
  /// Default Constructor
  CameraApp({super.key, required List<CameraDescription> cameras}) {
    _cameras = cameras;
  }

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  late QuizSolver _quizSolver;
  bool hasCameraAccess = true;
  String? error;

  @override
  void initState() {
    super.initState();
    _quizSolver = QuizSolver();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    try {
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } catch (e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            //print the error in human readable format
            print('The user did not grant access to the camera');
            hasCameraAccess = false;
            break;
          default:
            //print the error in human readable format
            print('Error: ${e.code} ${e.description}');
            error = 'Error: ${e.code} ${e.description}';
            break;
        }
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    if (!hasCameraAccess) {
      return const Center(
        child: Text("Accesso alla fotocamera negato"),
      );
    }
    return CameraPreview(
      controller,
      //bottone per scattare una foto
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () async {
                  try {
                    final image = await controller.takePicture();

                    if (context.mounted) {
                      showCupertinoDialog(
                        barrierDismissible: true,
                        context: context,
                        builder: (builder) => FutureBuilder(
                          future: _quizSolver.solveQuiz(image.path),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return CupertinoAlertDialog(
                                // title: Text(snapshot.data?.domanda ?? "?"),
                                content: snapshot.data?.toWidget(),
                              );
                            }
                            if (snapshot.hasError) {
                              final error = snapshot.error.toString();
                              return CupertinoAlertDialog(
                                title: const Text("Errore"),
                                content: Text(error),
                              );
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        ),
                      );
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: const Icon(Icons.camera_alt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
