//
//  ViewController.swift
//  TicTacSwift
//
//  Created by south boske on 2/19/16.
//  Copyright © 2016 com.boske.south. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    //var for X , O and winner
    var xEntry = "X"
    var oEntry = "O"
    
    var winner = ""
    
    @IBOutlet weak var space1: UIButton!
    @IBOutlet weak var space2: UIButton!
    @IBOutlet weak var space3: UIButton!
    @IBOutlet weak var space4: UIButton!
    @IBOutlet weak var space5: UIButton!
    @IBOutlet weak var space6: UIButton!
    @IBOutlet weak var space7: UIButton!
    @IBOutlet weak var space8: UIButton!
    @IBOutlet weak var space9: UIButton!
    @IBOutlet weak var turnLabel: UILabel!
    
    var buttons = [UIButton]()
    var currentPlayerStartingPoint : CGPoint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        buttons = [space1, space2, space3, space4, space4, space5, space6, space7, space8, space9]
        currentPlayerStartingPoint = turnLabel.center
        for label in self.buttons
        {
            label.setTitle("", forState: UIControlState.Normal)
            self.turnLabel.text = "X"
        }
    }
    
    func conditionX(sender: UIButton)
    {
        let alert = UIAlertController(title: winner + "You Win", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        let alertAction = UIAlertAction(title: "Resetting From UIAlert", style: UIAlertActionStyle.Default) { (action) -> Void in
            print("Here is my message")
            for label in self.buttons
            {
                label.titleLabel?.text = ""
                label.setTitle("", forState: UIControlState.Normal)
                self.turnLabel.text = "X"
            }
        }
        alert.addAction(alertAction)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func conditionO(sender: UIButton)
    {
        let alert = UIAlertController(title: winner + "You Win", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        let alertAction = UIAlertAction(title: "Resetting From UIAlert", style: UIAlertActionStyle.Default) { (action) -> Void in
            print("Here is my message")
            for label in self.buttons
            {
                label.titleLabel?.text = ""
                label.setTitle("", forState: UIControlState.Normal)
                self.turnLabel.text = "O"
            }
        }
            alert.addAction(alertAction)
            presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func onButtonTapped(sender: UIButton)
    {
        sender.setTitle(self.turnLabel.text, forState: UIControlState.Normal)
        sender.titleLabel?.text = self.turnLabel.text
        if self.turnLabel.text == "X"
        {
            sender.setTitleColor(UIColor.redColor(), forState: .Normal)
        } else {
            sender.setTitleColor(UIColor.blueColor(), forState: .Normal)
        }
        
//      sender.setTitle("X", forState: UIControlState.Normal)
        
        print("A = \(turnLabel.text)")
        print("B = \(turnLabel.text)")
        
        turnLabel.textColor = (UIColor.redColor())
        print(sender.currentTitle!)
        
        if self.turnLabel.text == "O"
        {
            turnLabel.text = "X"
            self.turnLabel.text = xEntry
            self.turnLabel.textColor = (UIColor.blueColor())
        }
        else if self.turnLabel.text == "X"
        {
            self.turnLabel.text = oEntry
            self.turnLabel.textColor = (UIColor.redColor())
        }
        
        if (self.space1.titleLabel?.text == self.space2.titleLabel?.text && self.space2.titleLabel?.text == self.space3.titleLabel?.text && space3.titleLabel?.text != "")
        {
            if self.space1.titleLabel?.text == "X"
            {
            conditionX(sender)
            }
            if self.space1.titleLabel?.text == "O"
            {
            self.conditionO(sender)
            }
        }
        else if (self.space4.titleLabel?.text == self.space5.titleLabel?.text && self.space5.titleLabel?.text == self.space6.titleLabel?.text && space6.titleLabel?.text != "")
        {
            if self.space4.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space4.titleLabel?.text == "O"
            {
                self.conditionO(sender)
            }
        }
        else if (self.space7.titleLabel?.text == self.space8.titleLabel?.text && self.space8.titleLabel?.text == self.space9.titleLabel?.text && space9.titleLabel?.text != "")
        {
            if self.space7.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space7.titleLabel?.text == "O"
            {
                self.conditionO(sender)
            }
        }
        else if (self.space1.titleLabel?.text == self.space4.titleLabel?.text && self.space4.titleLabel?.text == self.space7.titleLabel?.text && space7.titleLabel?.text != "")
        {
            if self.space1.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space1.titleLabel?.text == "O"
            {
                self.conditionO(sender)
            }
        }
        else if (self.space2.titleLabel?.text == self.space5.titleLabel?.text && self.space5.titleLabel?.text == self.space8.titleLabel?.text && space8.titleLabel?.text != "")
        {
            if self.space2.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space2.titleLabel?.text == "O"
            {
                self.conditionO(sender)
            }
        }
        else if (self.space3.titleLabel?.text == self.space6.titleLabel?.text && self.space6.titleLabel?.text == self.space9.titleLabel?.text && space9.titleLabel?.text != "")
        {
            if self.space3.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space3.titleLabel?.text == "O"
            {
                self.conditionO(sender)
            }
        }
        else if (self.space1.titleLabel?.text == self.space5.titleLabel?.text && self.space5.titleLabel?.text == self.space9.titleLabel?.text && space9.titleLabel?.text != "")
        {
            if self.space1.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space1.titleLabel?.text == "O"
            {
                self.conditionO(sender)
            }
        }
        else if (self.space3.titleLabel?.text == self.space5.titleLabel?.text && self.space5.titleLabel?.text == self.space7.titleLabel?.text && space7.titleLabel?.text != "")
        {
            if self.space3.titleLabel?.text == "X"
            {
                self.conditionX(sender)
            }
            if self.space3.titleLabel?.text == "O"
            {
                self.conditionO(sender)
                
            }
        }
    }
    
    
    @IBAction func onResetButton(sender: UIButton) {
    
        
        let alert = UIAlertController(title: winner + "You Win", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        let alertAction = UIAlertAction(title: "Resetting From Button", style: UIAlertActionStyle.Default) { (action) -> Void in
            print("Here is my message")
            for label in self.buttons
            {
                label.titleLabel?.text = ""
                label.setTitle("", forState: UIControlState.Normal)
                self.turnLabel.text = "O"
            }
        }
        alert.addAction(alertAction)
        presentViewController(alert, animated: true, completion: nil)
    }

}
