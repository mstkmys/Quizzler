//
//  Question.swift
//  Quizzler
//
//  Created by Miyoshi Masataka on 2018/03/05.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

struct Question {
    
    let quesiontText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        
        self.quesiontText = text
        self.answer = correctAnswer
        
    }
    
}








