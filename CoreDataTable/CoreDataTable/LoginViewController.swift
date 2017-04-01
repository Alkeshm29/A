//
//  LoginViewController.swift
//  CoreDataTable
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var namelogtxt: UITextField!
    @IBOutlet weak var passlogtxt: UITextField!
    
    @IBAction func BtnNew(_ sender: Any) {
    }
    override func viewDidAppear(_ animated: Bool) {
        
        savename = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        savepass=defaults.object(forKey: "Savedpass") as? [String] ?? [String]()
        
        print("Name \(savename)")
        print("Pass \(savepass)")
        namelist=savename
        passlist=savepass
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelist=savename
        passlist=savepass
    }
    
    func validateEmail(candidate: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: candidate)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func BtnLog(_ sender: Any) {
  
        print("Name list is")
        //print(namelist)
        var flag=0
        
//        if(validateEmail(candidate: namelogtxt.text!))
//        {
//            print("mail valid")
            for item in namelist
            {
                //for (var i=0;i<namelist.count;i++)
                //{
                //print(item)
                print("In for")
                if(namelogtxt.text == item)
                {
                    flag=1
                    break
                }
                
                
//5555            }
            if(flag==1)
            {
                print("pass is pas.............")
                // performSegue(withIdentifier: "segue", sender: self)
                
            }
            else
            {
                let alert = UIAlertController(title: "Alert", message: "Pass Wrong", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                //print("pass is wrong")
            }
        
        }
//        else
//        {
//            let alert = UIAlertController(title: "Alert", message: "Invalid id", preferredStyle: UIAlertControllerStyle.alert)
//            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//            print("invalid")
//        }
//    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
