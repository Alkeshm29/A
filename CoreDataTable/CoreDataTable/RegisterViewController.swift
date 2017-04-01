//
//  RegisterViewController.swift
//  CoreDataTable
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
var namelist=[String]()
var passlist=[String]()
var savename=[String]()
var savepass=[String]()
let defaults = UserDefaults.standard


class RegisterViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBAction func btnReg(_ sender: Any) {
        
        namelist.append(txtName.text!)
        defaults.set(namelist, forKey: "SavedArray")
        
        passlist.append(txtPass.text!)
        defaults.set(passlist, forKey: "Savedpass")
        txtName.text=""
        print(namelist)
        print(passlist)
        
    }
    //This on LoginVC
//    override func viewDidAppear(_ animated: Bool) {
//        
//        savename = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
//        savepass=defaults.object(forKey: "Savedpass") as? [String] ?? [String]()
//        
//        print("Name \(savename)")
//        print("Pass \(savepass)")
//        namelist=savename
//        passlist=savepass
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        namelist=savename
//        passlist=savepass
//    }
//  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
