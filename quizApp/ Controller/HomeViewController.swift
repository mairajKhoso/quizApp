//
//  HomeViewController.swift
//  quizApp
//
//  Created by Apple Macbook on 24/01/2019.
//  Copyright © 2019 Hivelet. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.layer.cornerRadius = imgView.frame.size.width / 7
        imgView.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBAction func startQuizBtnPressed(_ sender: button) {
        let alert = UIAlertController(title: "Alert", message: "There are 13 Questions with TRUE and FALSE Options, Once You selected any option you can not go to previous question", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "cancel", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SelectCourseViewController") as! SelectCourseViewController
                            self.present(nextViewController, animated:true, completion:nil)
//                self.navigationController?.pushViewController(nextViewController, animated: true)
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            }
        }))
    }

}
