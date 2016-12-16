//
//  ViewController.swift
//  TicTacToe
//
//  Created by Tomas-William Haffenden on 16/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //all buttons connected
    @IBOutlet weak var button: UIButton!
    
    let tri = UIImage(named: "Tri")! as UIImage;
    let circle = UIImage(named: "circle")! as UIImage;
    var currentPlayer:[Int]? = nil
    
    var counter = 2
    
    var playerOneScore:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var playerTwoScore:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    //all button connected
    @IBAction func buttonPressed(_ sender: AnyObject) {
    
        var currentPlayer = playerOneScore
        let currentButton = sender as? UIButton
        let indexPosition = ((currentButton?.tag)! / 10)
        let buttonValue = ((currentButton?.tag)! % 10)
        
        let winCombo1 = currentPlayer[1]
        
        if counter % 2 == 0 {
            sender.setImage(tri, for: UIControlState.normal)
            currentPlayer = playerOneScore
            currentPlayer[indexPosition] = buttonValue
            currentButton?.isEnabled = false
            counter += 1
            print(playerOneScore)
            
        
        } else {
            sender.setImage(circle, for: UIControlState.normal)
            currentPlayer = playerTwoScore
            playerTwoScore[indexPosition] = buttonValue
            currentButton?.isEnabled = false
            counter += 1
            print(playerTwoScore)
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

