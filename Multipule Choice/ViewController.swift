//
//  ViewController.swift
//  Multipule Choice
//
//  Created by Melville, Aidan on 2019-12-05.
//  Copyright © 2019 Melville, Aidan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets
    
    
    @IBOutlet weak var howManyQuestionsTextField: UITextField!
    
    @IBOutlet weak var studentsAnswersTextField: UITextField!
    
    @IBOutlet weak var correctAnswersTextField: UITextField!
    
    @IBOutlet weak var textOutputTextView: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//Actions
    
    
    @IBAction func checkIfStudentsAreCorrectButton(_ sender: Any) {
        
        //Guard against all the required things... could add ABCDE only characters.
        guard let questionNumber = howManyQuestionsTextField.text, questionNumber.count > 0, let intQuestionNumber = Int(questionNumber) else {
            textOutputTextView.text = "Please enter the Number of Questions"
            return
        }
        
        
        guard let studentAnswer = studentsAnswersTextField.text, studentAnswer.count == intQuestionNumber else {
            textOutputTextView.text = "Please set this to the value of questions of \(intQuestionNumber)."
            return
        }
        
        guard let correctAnswer = correctAnswersTextField.text, correctAnswer.count == intQuestionNumber else { return textOutputTextView.text = "Please enter the Number of Questions the same as student questions and total questions \(intQuestionNumber)" }
        
    
    //Find total Correct
        var totalCorrectAnswer = 0
       
        
        
        for (position, singleCharacters) in correctAnswer.enumerated() {
          
            let index = studentAnswer.index(studentAnswer.startIndex, offsetBy: position)
            
            
            if  singleCharacters == studentAnswer[index] {
                totalCorrectAnswer += 1
            }
            
        }
        
        textOutputTextView.text = "The number the student got right is \(totalCorrectAnswer) questions."
        
    }
    
    
    
    // studentAnswer.index(sutedentAnswer.startIndex, offsetBy: 0)
              
    
    
    
    
}

