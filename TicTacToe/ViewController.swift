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
    @IBOutlet var button: [UIButton]!
    
    @IBOutlet weak var winLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        
        winLabel.isHidden = true
        resetButton.isHidden = true
        
        winLabel.center = CGPoint(x: winLabel.center.x, y: winLabel.center.y + 500)
        resetButton.center = CGPoint(x: resetButton.center.x, y: resetButton.center.y - 500)
        
        activeGame = true
        triangles = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        circles = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        counter = 2
        
        for i in 1..<97 {
            
            if let btn = view.viewWithTag(i) as? UIButton {
                btn.setImage(nil, for: [])
            }
            
        }
        
    }
    
    let tri = UIImage(named: "Tri")! as UIImage;
    let circle = UIImage(named: "circle")! as UIImage;
    //var currentPlayer:[Int]? = nil
    var activeGame = true
    var counter = 2
    
    var triangles:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var circles:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    
    //all button connected
    @IBAction func buttonPressed(_ sender: AnyObject) {
    
        var currentPlayer = triangles
        let currentButton = sender as? UIButton
        let indexPosition = ((currentButton?.tag)! / 10)
        let buttonValue = ((currentButton?.tag)! % 10)
        //let winCombo = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 7, 9], [1, 5, 9], [3, 5, 7]]
        
        
        if activeGame {
            if counter % 2 == 0 {
                sender.setImage(tri, for: [])
                triangles[indexPosition] = buttonValue
                currentPlayer = triangles
                currentButton?.isEnabled = false
                print("Tri: \(triangles)")
            
        
            } else {
                sender.setImage(circle, for: [])
                circles[indexPosition] = buttonValue
                currentPlayer = circles
                currentButton?.isEnabled = false
                print("Circles \(circles)")
            }
        }

        func checkWin() {
            if ((currentPlayer[1]+currentPlayer[2]+currentPlayer[3] == 15) ||
                (currentPlayer[4]+currentPlayer[5]+currentPlayer[6] == 15) ||
                (currentPlayer[7]+currentPlayer[8]+currentPlayer[9] == 15) ||
                (currentPlayer[1]+currentPlayer[4]+currentPlayer[7] == 15) ||
                (currentPlayer[2]+currentPlayer[5]+currentPlayer[8] == 15) ||
                (currentPlayer[3]+currentPlayer[7]+currentPlayer[9] == 15) ||
                (currentPlayer[1]+currentPlayer[5]+currentPlayer[9] == 15) ||
                (currentPlayer[3]+currentPlayer[5]+currentPlayer[7] == 15)){
                
                activeGame = false
                
                if currentPlayer == triangles {
                    winLabel.text = "Triangles Win!!"
                } else {
                    winLabel.text = "Circles Win!!"
                }
                
                UIView.animate(withDuration: 1.5, animations: {
                    self.winLabel.isHidden = false
                    self.winLabel.center = CGPoint(x: self.winLabel.center.x, y: self.winLabel.center.y - 500)
                    self.resetButton.isHidden = false
                    self.resetButton.center = CGPoint(x: self.resetButton.center.x, y: self.resetButton.center.y + 500)
                })
                
                print("Win")
            } else {
                
                print("No win yet")
            }
        }
        
        checkWin()
        counter += 1
        
    }

//    func resetGame() {
//
//        for btn in button {
//            btn.setImage(UIImage(named: ""), for: [])
//            btn.isEnabled = true
//        }
//        
//        triangles = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//        circles = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
//        counter = 2
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        winLabel.isHidden = true
        resetButton.isHidden = true
        
        winLabel.center = CGPoint(x: winLabel.center.x, y: winLabel.center.y + 500)
        resetButton.center = CGPoint(x: resetButton.center.x, y: resetButton.center.y - 500)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

