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
  override func viewDidLoad() {
    super.viewDidLoad()
  
  }

  // MARK: - IB Actions
  
  @IBAction func letterButtonPressed(_ sender: UIButton) {
    
    sender.isEnabled = false;
    
  }
  
}

