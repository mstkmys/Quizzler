//
//  ViewController.swift
//  Quizzler
//
//  Created by Miyoshi Masataka on 2018/03/05.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quizView: QuizView = {
       
        let quizView = QuizView(frame: UIScreen.main.bounds)
        quizView.backgroundColor = .green
        
        return quizView
        
    }()
    
    let allQuestions = QuestionBank()
    var pickedAnswer = false
    var questionNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [quizView].forEach{ self.view.addSubview($0) }
        
        let firstQuestion = allQuestions.list.first
        quizView.quizeLabel.text = firstQuestion?.quesiontText
        
    }
    
    // MARK: Action
    
    @objc func answerPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNum += 1
        quizView.quizeLabel.text = allQuestions.list[questionNum].quesiontText
        
    }
    
    private func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNum].answer
        
        if correctAnswer == pickedAnswer {
            print("You correct")
        }
        else {
            print("wrong!")
        }
        
    }

}













