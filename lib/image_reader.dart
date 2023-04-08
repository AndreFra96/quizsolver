import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

//This class is used to extract the text from an image
class ImageReader {
  //recognizer
  late TextRecognizer recognizer;

  //constructor
  ImageReader() {
    //initialize the recognizer
    recognizer = TextRecognizer(script: TextRecognitionScript.latin);
  }

  //process the image and return the recognized text
  Future<RecognizedText> process(InputImage image) {
    return recognizer.processImage(image);
  }

  static List<String> extractLines(RecognizedText recognizedText) {
    final List<String> lines = [];
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        lines.add(line.text);
      }
    }
    return lines;
  }
}
