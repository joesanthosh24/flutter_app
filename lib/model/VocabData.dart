import 'dart:collection';

import 'package:flutter/cupertino.dart';

import '../model/VocabWord.dart';

class VocabData extends ChangeNotifier {
  int currIndex = 0;

  List<VocabWord> _vocabWords = [
    VocabWord(word: 'こんにちは'),
    VocabWord(word: 'おはようございます'),
    VocabWord(word: 'としょかん', inKanji: '図書館'),
    VocabWord(word: 'びじゅつかん', inKanji: '美術館'),
    VocabWord(word: 'えいが', inKanji: '映画'),
    VocabWord(word: 'えいかいわ', inKanji: '英会話'),
    VocabWord(word: 'おおきい', inKanji: '大きい'),
  ];

  UnmodifiableListView<VocabWord> getVocabWords() {
    return UnmodifiableListView(_vocabWords);
  }

  void addVocabWord(String vocabWord, {kanji = ""}) {
    _vocabWords.add(VocabWord(word: vocabWord, inKanji: kanji));

    notifyListeners();
  }

  String getWordAtCurrIndex() {
    return _vocabWords[currIndex].getFullWord();
  }

  String getCurrentWordTranslation() {
    return _vocabWords[currIndex].translation;
  }

  void incrementIndex() {
    if (currIndex == _vocabWords.length - 1) {
      currIndex = 0;
    } else {
      currIndex += 1;
    }

    notifyListeners();
  }

  void decrementIndex() {
    if (currIndex == 0) {
      currIndex = _vocabWords.length - 1;
    } else {
      currIndex -= 1;
    }

    notifyListeners();
  }
}
