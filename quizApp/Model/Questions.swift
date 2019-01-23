//
//  Questions.swift
//  quizApp
//
//  Created by Apple Macbook on 23/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import Foundation
class Questions{
    let question:String
    let answer:Bool
    
    init(questionText:String,correctAnswers:Bool) {
        self.question = questionText
        self.answer = correctAnswers
        
    }
}
