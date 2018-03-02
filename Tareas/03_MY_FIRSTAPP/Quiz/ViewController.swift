//
//  ViewController.swift
//  Quiz
//
//  Created by Oscar Almazan Lora on 21/02/18.
//  Copyright © 2018 iOS Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabeltest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBOutlet weak var questionLabel: UITextField!
    
    @IBOutlet weak var answerLabel: UITextField!
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes" ]
    var currentQuestionIndex: Int = 0

}

