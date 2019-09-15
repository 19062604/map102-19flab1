//
//  ViewController.swift
//  quiz
//
//  Created by Sharanjit Kaur on 2019-09-06.
//  Copyright © 2019 Sharanjit Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionlabel: UILabel!
   @IBOutlet var answerlabel: UILabel!
    @IBAction func showNextQuestion(_ sender: UIButton){

        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
   }
       let question: String = questions[currentQuestionIndex]
        questionlabel.text = question
       answerlabel.text = "???"
    }
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String  = answer[currentQuestionIndex]
    answerlabel. text = answer
        }
     let  questions: [String] = [
    "What is 7+7",
    "what is the capital of vermont?",
    "What is cognac made from?"
    ]
    let  answers : [String] = [
    "14",
    "montpelier",
    "grapes"
    ]
    var currentQuestionIndex: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

