//
//  ViewController.swift
//  Apple Pie
//
//  Created by Vlad Borovtsov on 19.01.2021.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var treeImageView: UIImageView!
  
  @IBOutlet var letterButtons: [UIButton]!
  
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var correctWordLabel: UILabel!
  
  // MARK: - Properties
  var totalWins = 0;
  var totalLosses = 0;
  
  var currentGame: Game!
  let incorrectMovesAllowed = 7;
  var listOfWords = [
    "Александрия",
    "Атланта",
    "Ахмедабад",
    "Багдад",
    "Бангалор",
    "Бангкок",
    "Барселона",
    "Белу-Оризонти",
    "Богота",
    "Буэнос-Айрес",
    "Вашингтон",
    "Гвадалахара",
    "Гонконг",
    "Гуанчжоу",
    "Дакка",
    "Даллас",
    "Далянь",
    "Дар-эс-Салам",
    "Дели",
    "Джакарта",
    "Дунгуань",
    "Йоханнесбург",
    "Каир",
    "Калькутта",
    "Карачи",
    "Киншаса",
    "Куала Лумпур",
    "Лагос",
    "Лахор",
    "Лима",
    "Лондон",
    "Лос-Анджелес",
    "Луанда",
    "Мадрид",
    "Майами",
    "Манила",
    "Мехико",
    "Москва",
    "Мумбаи",
    "Нагоя",
    "Нанкин",
    "Нью-Йорк",
    "Осака",
    "Париж",
    "Пекин",
    "Пуна",
    "Рио-де-Жанейро",
    "Сан-Паулу",
    "Санкт-Петербург",
    "Сантьяго",
    "Сеул",
    "Сиань",
    "Сингапур",
    "Стамбул",
    "Сурат",
    "Сучжоу",
    "Тегеран",
    "Токио",
    "Торонто",
    "Тяньцзинь",
    "Ухань",
    "Филадельфия",
    "Фошань",
    "Фукуока",
    "Хайдарабад",
    "Ханчжоу",
    "Харбин",
    "Хартум",
    "Хошимин",
    "Хьюстон",
    "Цзинань",
    "Циндао",
    "Ченнай",
    "Чикаго",
    "Чунцин",
    "Чэнду",
    "Шанхай",
    "Шэньчжэнь",
    "Шэньян",
    "Эр-Рияд",
    "Янгон"
  ];
  
  // MARK: - Methods
  func newRound() {
    let newWord = listOfWords.removeFirst();
    currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed);
    updateUI();
  }

  func updateUI() {
    let movesRemaining = currentGame.incorrectMovesRemaining;
    let imageName = "Tree0\(movesRemaining < 8 ? movesRemaining : 7)"; //we are using 7 here bcs Tree07 is max. available image.
    treeImageView.image = UIImage.init(named: imageName);
    scoreLabel.text = "Выигрыши: \(totalWins), Проигрыши: \(totalLosses)";
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    newRound();
  }
  

  // MARK: - IB Actions
  
  @IBAction func letterButtonPressed(_ sender: UIButton) {
    
    sender.isEnabled = false;
    
  }
  
}

