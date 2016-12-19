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
    //var currentPlayer:[Int]? = nil
    
    var counter = 2
    
    var triangles:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var circles:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    
    //all button connected
    @IBAction func buttonPressed(_ sender: AnyObject) {
    
        var currentPlayer = triangles
        let currentButton = sender as? UIButton
        let indexPosition = ((currentButton?.tag)! / 10)
        let buttonValue = ((currentButton?.tag)! % 10)
        
        func checkWin() {
            if ((currentPlayer[1]+currentPlayer[2]+currentPlayer[3] == 15) ||
                (currentPlayer[4]+currentPlayer[5]+currentPlayer[6] == 15) ||
                (currentPlayer[7]+currentPlayer[8]+currentPlayer[9] == 15) ||
                (currentPlayer[1]+currentPlayer[4]+currentPlayer[7] == 15) ||
                (currentPlayer[2]+currentPlayer[5]+currentPlayer[8] == 15) ||
                (currentPlayer[3]+currentPlayer[7]+currentPlayer[9] == 15) ||
                (currentPlayer[1]+currentPlayer[5]+currentPlayer[9] == 15) ||
                (currentPlayer[3]+currentPlayer[5]+currentPlayer[7] == 15)){
                print("\(currentPlayer) Win")
            } else {
                print("No win \(currentPlayer)")
            }
        }
        
        if counter % 2 == 0 {
            sender.setImage(tri, for: UIControlState.normal)
            currentPlayer = triangles
            triangles[indexPosition] = buttonValue
            currentButton?.isEnabled = false
            counter += 1
            print("Tri: \(triangles)")
            
        
        } else {
            sender.setImage(circle, for: UIControlState.normal)
            currentPlayer = circles
            circles[indexPosition] = buttonValue
            currentButton?.isEnabled = false
            counter += 1
            print("Circles \(circles)")
        }
        checkWin()
        
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

