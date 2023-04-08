import 'package:flutter/material.dart';
import 'package:quizsolver/risposta.dart';

class Domanda {
  String? domanda;
  List<Risposta>? risposte;

  Domanda(this.domanda, this.risposte);

  Domanda.fromJSON(Map<String, dynamic> json) {
    print(json);
    List<Risposta> risposte = [];
    json['risposte'].forEach((key, val) {
      risposte.add(Risposta.fromJSON({'risposta': key, 'probabilita': val}));
    });
    domanda = json['domanda'];
    this.risposte = risposte;
  }

  Risposta? rispostaCorretta() {
    if (risposte == null || risposte!.isEmpty) return null;
    if (risposte!.length == 1) return risposte![0];
    Risposta max = risposte![0];
    for (int i = 1; i < risposte!.length; i++) {
      if (risposte![i].probabilita! > max.probabilita!) max = risposte![i];
    }
    return max;
  }

  @override
  String toString() {
    String risposte = '';
    this.risposte?.forEach((element) {
      risposte += '$element\n';
    });
    return '$domanda \n$risposte \n\n Risposta corretta: ${rispostaCorretta()?.risposta}';
  }

  //Widget per visualizzare la domanda con le possibili risposte,
  //le risposte vengono visualizzate ordinate per probabilità dalla più alta alla più bassa
  Widget toWidget() {
    return Column(
      children: [
        Text(domanda!),
        ...risposte!
            .map((e) => Text(
                  '${e.risposta} - ${e.probabilita}',
                  style: TextStyle(
                      color: e == rispostaCorretta()
                          ? Colors.green
                          : Colors.redAccent),
                ))
            .toList()
      ],
    );
  }
}
