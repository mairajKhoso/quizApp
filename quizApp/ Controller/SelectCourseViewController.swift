//
//  SelectCourseViewController.swift
//  quizApp
//
//  Created by Apple Macbook on 25/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit

class SelectCourseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func generalKnowledgeBtnPressed(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        //nextViewController.getSelectedCourse = sender.tag
        print(sender.tag)
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func EnglishBtnPressed(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        //nextViewController.getSelectedCourse = sender.tag
        print(sender.tag)
        self.present(nextViewController, animated:true, completion:nil)
    }
    
}
