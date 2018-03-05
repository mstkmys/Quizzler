//
//  QuizView.swift
//  Quizzler
//
//  Created by Miyoshi Masataka on 2018/03/05.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class QuizView: UIView {
    
    let quizeLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Question"
        label.textAlignment = .center
        
        return label
        
    }()
    
    let trueButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("TRUE", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .blue
        
        return button
        
    }()
    
    let falseButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("FALSE", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .red
        
        return button
        
    }()
    
    let progressBar: UIView = {
       
        let view = UIView()
        view.backgroundColor = .white
        
        return view
        
    }()
    
    let progressLabel: UILabel = {
       
        let label = UILabel()
        label.text = "x/10"
        
        return label
        
    }()
    
    let scoreLabel: UILabel = {
       
        let label = UILabel()
        label.text = "0000"
        
        return label
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add Views
        [quizeLabel, trueButton, falseButton, progressBar, progressLabel, scoreLabel].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Layout
    override func layoutSubviews() {
        
        quizeLabel.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: self.trailingAnchor,
            size: .init(width: 0, height: self.frame.size.height / 2)
        )
        
        trueButton.anchor(
            top: quizeLabel.bottomAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 20, bottom: 0, right: 0),
            size: .init(width: self.frame.size.width / 3, height: 80)
        )
    
        falseButton.anchor(
            top: quizeLabel.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 0, right: 20)
        )
        falseButton.anchorSize(to: trueButton)
        
        progressBar.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: nil,
            size: .init(width: 100, height: 20)
        )
        
        progressLabel.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: progressBar.topAnchor,
            trailing: nil,
            padding: .init(top: 0, left: 10, bottom: 10, right: 0)
        )
        
        scoreLabel.anchor(
            top: nil,
            leading: nil,
            bottom: progressBar.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 0, left: 0, bottom: 10, right: 10)
        )
        
    }

}










