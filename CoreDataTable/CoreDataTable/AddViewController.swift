//
//  AddViewController.swift
//  CoreDataTable
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {

    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDisc: UITextField!

    var disc: String = ""
    //*****
    var title2: String = ""
     var existingItem: NSManagedObject!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (existingItem != nil) {
            
            txtTitle.text = title2
            txtDisc.text = disc
            
        }

        

        // Do any additional setup after loading the view.
    }

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

    @IBAction func BtnSave(_ sender: Any) {
        let AppDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
       
        let managedObjectContext = AppDel.persistentContainer.viewContext as! NSManagedObjectContext
        let theContext = managedObjectContext
        
        
        //let theContext: NSManagedObjectContext = AppDel.managedObjectContext
        let theEnt = NSEntityDescription.entity(forEntityName: "DataList", in: theContext)
        
        
        
        if (existingItem != nil) {
            
            existingItem.setValue(txtTitle.text as String?, forKey: "title")
            existingItem.setValue(txtDisc.text as String?, forKey: "disc")
            
        } else {
            
            let newitem = Model(entity: theEnt!, insertInto: theContext)
            newitem.title = txtTitle.text!
            newitem.disc = txtDisc.text!
         }
        

        
    do {
    
    try theContext.save()
    
    } catch _ {
    
    }
    
    self.navigationController?.popToRootViewController(animated: true)
    
    }
}
