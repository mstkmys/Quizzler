//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Miyoshi Masataka on 2018/03/05.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import Foundation

struct QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // Add the Question to the list of questions
        list.append(Question(text: "ヒカキンは登録者数日本１のYouTuberである。", correctAnswer: true))
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "セイキンはヒカキンの実の兄である。", correctAnswer: true))
        
        list.append(Question(text: "マホトはヒカキンの幼馴染である。", correctAnswer: false))
        
        list.append(Question(text: "ヒカキンの出身地は北海道である。", correctAnswer: false))
        
        list.append(Question(text: "ヒカキンはエアロスミスと共演した事がある。", correctAnswer: true))
        
        list.append(Question(text: "ヒカキンの動画で最も再生数が高い動画は2012年に投稿された動画である。", correctAnswer: false))
        
        list.append(Question(text: "ヒカキンは、上京当時アルバイトをしながら生活していた。", correctAnswer: false))
        
    }
    
}












