//
//  English.swift
//  quizApp
//
//  Created by Apple Macbook on 25/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import Foundation
class English{
    var englishList = [Questions]()
    
    init() {
        let item = Questions(questionText: "A RIVER is bigger than a STREAM.", correctAnswer: true)
        englishList.append(item)
        englishList.append(Questions(questionText: "There are one thousand years in a CENTURY", correctAnswer: false))
        englishList.append(Questions(questionText: "FOUNDED is the past tense of FOUND.", correctAnswer: true))
        englishList.append(Questions(questionText: "ANSWER can be used as a noun and a verb.", correctAnswer: true))
        englishList.append(Questions(questionText: "SCARLET is a brilliant red colour", correctAnswer: true))
        englishList.append(Questions(questionText: "USED TO DOING and USED TO DO mean the same thing", correctAnswer: false))
        englishList.append(Questions(questionText: "You can use IMPROVE as a noun and as a verb", correctAnswer:false))
        englishList.append(Questions(questionText: "DOZEN is equivalent to 20.", correctAnswer: false))
        englishList.append(Questions(questionText: "The past tense of FIND is FOUND", correctAnswer: true))
        englishList.append(Questions(questionText: "T EQUIVALENT TO is (more or less) the same as EQUAL TO", correctAnswer: true))
        
    }
}
