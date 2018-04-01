//
//  ViewController.swift
//  Project 2
//
//  Created by Zimpfer, Kristen M on 3/21/18.
//  Copyright © 2018 Zimpfer, Kristen M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var one:Int = 0
    var two:Int = 0
    var three:Int = 0
    var four:Int = 0
    var five:Int = 0
    var six:Int = 0
    var seven:Int = 0
    var eight:Int = 0
    var nine:Int = 0
    var ten:Int = 0
    var slider:Int = 0
    var total:Int = 0

  
    
    
    
    

    
    
    @IBAction func traitOne(_ sender: UISwitch) {
        //gullible
        if sender.isOn {
            one = 1
        }
        else {
            one = 0
        }
    }
    
    @IBAction func traitTwo(_ sender: UISwitch) {
        //courageous
        if sender.isOn {
            two = 2
        }
        else {
            two = 0
        }
    }
    
    @IBAction func traitThree(_ sender: UISwitch) {
        //curious
        if sender.isOn {
            three = 3
        }
        else {
            three = 0
        }
    }
    
    
    @IBAction func traitFour(_ sender: UISwitch) {
        //Adventurous
        if sender.isOn {
            four = 4
        }
        else {
            four = 0
        }
    }
    
    @IBAction func traitFive(_ sender: UISwitch) {
        //Unique
        if sender.isOn {
            five = 5
        }
        else {
            five = 0
        }
    }
    
    
    @IBAction func traitSix(_ sender: UISwitch) {
        //humble
        if sender.isOn {
            six = 6
        }
        else {
            six = 0
        }
    }
    
    
    @IBAction func traitSeven(_ sender: UISwitch) {
        //deteremined
        if sender.isOn {
            seven = 7
        }
        else {
            seven = 0
        }
    }
    

    
    @IBAction func traitEight(_ sender: UISwitch) {
        //Kind
        if sender.isOn {
            eight = 8
        }
        else {
            eight = 0
        }
    }
    
    
    @IBAction func traitNine(_ sender: UISwitch) {
        //independent
        if sender.isOn {
            nine = 9
        }
        else {
            nine = 0
        }
    }
    
    @IBAction func traitTen(_ sender: UISwitch) {
        //selfless
        if sender.isOn {
            ten = 10
        }
        else {
            ten = 0
        }
    }
    
    
    
    
    @IBAction func mySlider(_ sender: UISlider) {
        slider = Int(sender.value)
    }
    
   
    @IBOutlet weak var nameView: UIView!
    
    
    @IBOutlet weak var questionView: UIView!
    
    @IBAction func myStart(_ sender: Any) {
        myName.resignFirstResponder()
        if(questionView.isHidden) {
            questionView.isHidden = false
        }
        else {
            questionView.isHidden = true
        }
        if(nameView.isHidden) {
            nameView.isHidden = false
        }
        else {
            nameView.isHidden = true
        }
    }

   
    
    
    @IBOutlet weak var answerView: UIView!
    
        
    @IBOutlet weak var myCharacter: UILabel!
    
    
    
    @IBOutlet weak var myName: UITextField!
    
    
    
    

    
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    @IBAction func submit(_ sender: Any) {
        let name = myName.text!
         myName.resignFirstResponder()
    
        total = one + two + three + four + five + six + seven + eight + nine + ten + slider
        myCharacter.text = "Total: \(total)"
        
        if(total <= 10) {
            myCharacter.text = "\(name), you are Snow White!"
            myImage.image = UIImage(named: "snow")
           
        }
        else if(total > 10 && total <= 20){
            myCharacter.text = "\(name), you are Ariel!"
            myImage.image = UIImage(named: "Ariel")
        }
            
        else if(total > 20 && total <= 30){
            myCharacter.text = "\(name), you are Mulan!"
            myImage.image = UIImage(named: "Mulan")
        }
        else if(total > 30 && total <= 40){
            myCharacter.text = "\(name), you are Aurora!"
            myImage.image = UIImage(named: "Aurora")
        }
            
        else if(total > 40 && total <= 50){
            myCharacter.text = "\(name), you are Cinderella!"
            myImage.image = UIImage(named: "Cinderella")
        }
            
        else {
            myCharacter.text = "\(name), you are Belle!"
            myImage.image = UIImage(named: "belle")
        }
        if(answerView.isHidden) {
            answerView.isHidden = false
        }
        else {
            answerView.isHidden = true
        }
        
        if(questionView.isHidden) {
            questionView.isHidden = false
        }
        else {
            questionView.isHidden = true
        }
        
    }
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

