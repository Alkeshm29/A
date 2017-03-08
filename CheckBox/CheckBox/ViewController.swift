//
//  ViewController.swift
//  CheckBox
//
//  Created by BridgeLabz Solutions LLP  on 3/8/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boxOne: UIButton!
    
    let BoxOn = UIImage(named: "Checked")
    let BoxOff = UIImage(named: "Unchecked")
    var IsBoxClicked:Bool = false
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }

    @IBAction func checkBox(_ sender: Any)
    {
       if IsBoxClicked == true
        {
           boxOne.setImage(BoxOn, for: .normal)
           self.view.backgroundColor = UIColor.red
           IsBoxClicked = false
        }else if IsBoxClicked ==  false
        {
            boxOne.setImage(BoxOff, for: .normal)
            self.view.backgroundColor = UIColor.white
            IsBoxClicked = true
        }
        
   }
}

