import 'dart:convert';

import 'package:quizsolver/language_model.dart';
import 'package:http/http.dart' as http;
import 'config.dart';

class GPTModel extends LanguageModel {
  GPTModel(String model, {int temperature = 0, int maxTokens = 500})
      : super(model, temperature: temperature, maxTokens: maxTokens);

  @override
  Future<dynamic> ask(String question) async {
    final config = {
      "model": model,
      "messages": [
        {"role": "user", "content": question}
      ],
      "max_tokens": maxTokens,
      "temperature": temperature
    };
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $openaiApiKey',
    };

    final url = Uri.https(openaiBasePath, 'v1/chat/completions');
    final response =
        await http.post(url, body: jsonEncode(config), headers: headers);
    return response.body;
  }
}
