//
//  ViewController.swift
//  Fizz-Buzz
//
//  Created by Anthony Fleming on 11/23/19.
//  Copyright © 2019 com.coppellisd. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    // MARK: Variables
    var string1 = " "
    var num = " "
    var number = 0
    
    // MARK: Outlets
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var enterNumberUserInput: UITextField!
    @IBOutlet var resultsOfFizzBuzzNumbers: UITextView!
    
    // MARK: Actions
    @IBAction func enterButton(_ sender: Any) {
        fizzBuzz()
    }
    
    //MARK: Function
    func fizzBuzz() {
        string1 = " "
        num = enterNumberUserInput.text ?? "1 "
        number = Int(num) ?? 1
        
        for value in 1...number {
            if value  % 3 == 0 && value % 5 == 0 && value % 7 == 0 {
                string1 += ("FizzBuzzBang, ")
            } else if value % 3 == 0 && value % 5 == 0 {
                 string1 += ("FizzBuzz, ")
            } else if value % 3 == 0 {
               string1 += ("Fizz, ")
            } else if value % 5 == 0 {
                string1 += ("Buzz, ")
            } else {
                string1 += (String(value) + ", ")
            }
        }
        resultsOfFizzBuzzNumbers.text = string1

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set border and border color of TextView
        self.resultsOfFizzBuzzNumbers.layer.borderColor = UIColor.black.cgColor
        self.resultsOfFizzBuzzNumbers.layer.borderWidth = 1.5
    }
}
