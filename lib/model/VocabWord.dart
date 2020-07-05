import 'package:flutter/cupertino.dart';
import 'package:translator/translator.dart';

class VocabWord {
  String word;
  String inKanji;
  String translation = "";

  VocabWord({@required this.word, this.inKanji = ""}) {
    translateWord();
  }

  void translateWord() async {
    var wordToTranslate = inKanji == "" ? word : inKanji;

    await GoogleTranslator()
        .translate(wordToTranslate)
        .then((value) => translation = value);
  }

  String getFullWord() {
    String wordToReturn = this.word;

    if (this.inKanji != "") {
      wordToReturn += "\n" + this.inKanji;
    }

    return wordToReturn;
  }
}
