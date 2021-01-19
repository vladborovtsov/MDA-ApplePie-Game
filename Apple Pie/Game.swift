//
//  Game.swift
//  Apple Pie
//
//  Created by Vlad Borovtsov on 19.01.2021.
//

struct Game {
  var word: String
  var incorrectMovesRemaining: Int
  fileprivate var guessedLatters: [Character] = []
  
  init(word: String, incorrectMovesRemaining: Int) {
    self.word = word;
    self.incorrectMovesRemaining = incorrectMovesRemaining;
  }
  
  var guessedWord: String {
    var result = String();
    for letter in word {
      if guessedLatters .contains(Character(letter.lowercased())) || letter == "-" || letter == " " {
        result += String(letter);
      }
      else {
        result += "_";
      }
    }
    return result;
  }
  
  mutating func playerGuessed(letter: Character) {
    let lowercasedLetter = Character(letter.lowercased());
    guessedLatters.append(lowercasedLetter);
    if !word.lowercased().contains(lowercasedLetter) {
      incorrectMovesRemaining -= 1;
    }
  }
}
