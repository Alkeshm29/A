//
//  TableViewController.swift
//  CoreDataTable
//
//  Created by gaurav on 27/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
import CoreData


class TableViewController: UITableViewController {
    //5515
    
    
    @IBOutlet var tblView: UITableView!

    var List :Array<AnyObject>=[]
    
    override func viewDidLoad() {
         super.viewDidLoad()
//                tblView.estimatedRowHeight=56
//                tblView.rowHeight=UITableViewAutomaticDimension
//        self.tableView.estimatedRowHeight = 56.0
//        self.tableView.rowHeight = UITableViewAutomaticDimension

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return List.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        var cell :TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell

        
        let data: NSManagedObject = List[indexPath.row] as! NSManagedObject
        
        cell.olblTitle?.text = data.value(forKey: "title") as? String
        cell.lblDisc?.text = data.value(forKey: "disc") as? String
        cell.layer.borderWidth=0.5
        //55for autohight
       
//        cell.lblDisc.text=List[indexPath.row] as! String
//        cell.lblDisc.numberOfLines=0
        return cell
        
    }
   
    
    override func viewDidAppear(_ animated: Bool) {
        let AppDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let managedObjectContext = AppDel.persistentContainer.viewContext as! NSManagedObjectContext
        let Context = managedObjectContext
        
       // let Context: NSManagedObjectContext = AppDel.managedObjectContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DataList")
        
        
        List = try! Context.fetch(request)
       
        tableView.reloadData()
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
             // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let AppDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let managedObjectContext = AppDel.persistentContainer.viewContext as! NSManagedObjectContext
        let Context = managedObjectContext
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
            Context.delete(List[indexPath.row] as! NSManagedObject)
            List.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            
        }
        
        var error: NSError? = nil
        
        do {
            
            try Context.save()
            
        } catch let error1 as NSError {
            
            error = error1
            print(error)
            abort()
            
        }    
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "update" {
            
            let selectedItem: NSManagedObject = List[self.tableView.indexPathForSelectedRow!.row] as! NSManagedObject
            
            let ViewCon: AddViewController = segue.destination as! AddViewController
            
            ViewCon.title2 = selectedItem.value(forKey: "title") as! String
            ViewCon.disc = selectedItem.value(forKey: "disc") as! String
            
            ViewCon.existingItem = selectedItem
        }
    
    }
    

}
