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
    
    var counter = 2
    
    var playerOneScore:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var playerTwoScore:[Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    //all button connected
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let currentButton = sender as? UIButton
        
        if counter % 2 == 0 {
            sender.setImage(tri, for: UIControlState.normal)
            print(sender.tag)
            currentButton?.isEnabled = false
            counter += 1
        
        } else {
            sender.setImage(circle, for: UIControlState.normal)
            print(sender.tag)
            currentButton?.isEnabled = false
            counter += 1
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

