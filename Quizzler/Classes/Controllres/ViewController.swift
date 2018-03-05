//
//  ViewController.swift
//  Quizzler
//
//  Created by Miyoshi Masataka on 2018/03/05.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let quizView: QuizView = {
       
        let quizView = QuizView(frame: UIScreen.main.bounds)
        quizView.backgroundColor = .green
        
        return quizView
        
    }()
    
    let allQuestions = QuestionBank()
    var pickedAnswer = false
    var questionNum = 0
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [quizView].forEach{ self.view.addSubview($0) }
        
        nextQuestion()
        
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
        
        nextQuestion()
        
    }
    
    private func updataUI() {
        
        quizView.progressBar.frame.size.width = (self.view.frame.size.width / CGFloat(allQuestions.list.count)) * (CGFloat(questionNum + 1))
        quizView.scoreLabel.text = "Score: \(score)"
        quizView.progressLabel.text = "\(questionNum + 1) / \(allQuestions.list.count)"
        
    }
    
    private func nextQuestion() {
        
        if questionNum <= allQuestions.list.count - 1 {
            
            quizView.quizeLabel.text = allQuestions.list[questionNum].quesiontText
            
            updataUI()
            
        }
        else {
            
            let alert = UIAlertController(title: "Awesome", message: "You finished. Restart?", preferredStyle: .alert)
            
            let restart = UIAlertAction(title: "Resatart", style: .default, handler: { _ in
                self.startOver()
            })
            
            alert.addAction(restart)
            
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    private func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNum].answer
        
        if correctAnswer == pickedAnswer {
//            AudioServicesPlaySystemSound(SystemSoundID(1013))
            score += 1
        }
        else {
            print("wrong!")
        }
        
    }
    
    private func startOver() {
        
        questionNum = 0
        score = 0
        nextQuestion()
        
    }

}













