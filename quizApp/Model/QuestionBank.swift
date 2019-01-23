//
//  QuestionBank.swift
//  quizApp
//
//  Created by Apple Macbook on 23/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import Foundation

class QuestionBank{
    //property
    // questionList is the class Questions type
    // QuestionList is an array which holds all the questions
    var list = [Questions]()
    //initializer that have no parameters because we do do not want to take any arguments
    
    init(){
        // Creating a quiz item and appending it to the list
        let item = Questions(questionText: "Ialamabad is the capital of Pakistan", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Questions(questionText: "Chukar is the national bird of Pakistan", correctAnswer: true))
        
        list.append(Questions(questionText: "Pakistan's National game is Hockey", correctAnswer: true))
        
        list.append(Questions(questionText: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Questions(questionText: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        list.append(Questions(questionText: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        //
        list.append(Questions(questionText: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        list.append(Questions(questionText: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        list.append(Questions(questionText: "Jasmine is the Pakistan's national flower", correctAnswer: true))
        
        list.append(Questions(questionText: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        list.append(Questions(questionText: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        list.append(Questions(questionText: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        list.append(Questions(questionText: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
    }
}
