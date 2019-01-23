//
//  ViewController.swift
//  quizApp
//
//  Created by Apple Macbook on 07/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //object of questionBank class
    let allQuestion = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber:Int = 0
    var score:Int = 0
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nextQuestion()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1
        {
            pickedAnswer = true
        }
        else if sender.tag == 2
        {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    func updateUI(){
        self.scoreLbl.text = "Score: \(score)"
        progressLbl.text = "\(questionNumber + 1)/13"
        //progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
        progressBar.frame.size.width = (view.frame.size.width/13)*CGFloat(questionNumber+1)
    }
    func nextQuestion(){
        if questionNumber <= 12{
        questionLbl.text = allQuestion.list[questionNumber].question
            updateUI()
        }
        else{
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the question, do you want to start again", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
    }
    func checkAnswer(){
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            ProgressHUD.showSuccess("Correct")
            score += 1
        }
        else{
            ProgressHUD.showError("Wrong")
        }
    }
    func startOver()
    {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    
    

}

