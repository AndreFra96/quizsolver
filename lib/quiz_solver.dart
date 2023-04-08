import 'dart:convert';

import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:quizsolver/language_model.dart';

import 'config.dart';
import 'domanda.dart';
import 'gpt_model.dart';
import 'image_reader.dart';

class QuizSolver {
  late ImageReader _imageReader;
  late LanguageModel _languageModel;

  QuizSolver() {
    _imageReader = ImageReader();
    _languageModel = GPTModel('gpt-3.5-turbo');
  }

  Future<Domanda?> solveQuiz(String imagePath) async {
    final image = InputImage.fromFilePath(imagePath);
    final recognizedText = await _imageReader.process(image);
    final lines = ImageReader.extractLines(recognizedText);
    final question = lines.join("\n");
    final modelResponse = await _languageModel.ask(openaiPrompt + question);
    final parsedModelResponse = jsonDecode(modelResponse);
    final choices = parsedModelResponse['choices'];
    if (!(choices != null && choices.length > 0)) return null;
    final domanda =
        Domanda.fromJSON(jsonDecode(choices[0]["message"]["content"]));
    return domanda;
  }
}
