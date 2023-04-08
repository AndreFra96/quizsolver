abstract class LanguageModel {
  String model;
  int maxTokens;
  int temperature;

  LanguageModel(this.model, {this.temperature = 0, this.maxTokens = 500});

  Future<dynamic> ask(String question);
}
