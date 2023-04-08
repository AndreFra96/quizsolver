class Risposta {
  String? risposta;
  double? probabilita;

  Risposta(this.risposta, this.probabilita);

  Risposta.fromJSON(Map<String, dynamic> json) {
    risposta = json['risposta'];
    probabilita = json['probabilita'].toDouble();
  }

  @override
  String toString() {
    return '$risposta - $probabilita';
  }
}
