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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [quizView].forEach{ self.view.addSubview($0) }
        
    }

}













