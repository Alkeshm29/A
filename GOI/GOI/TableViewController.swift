//
//  TableViewController.swift
//  GOI
//
//  Created by gaurav on 15/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let imglist=["NarendraModi.jpeg","RajnathSingh.jpeg","Arun Jetaly.jpeg","SushmaSwaraj.jpeg","SureshPrabhu.jpeg","SmrutiIrani.jpeg","NitinGadkari.jpeg"];
    let namelist=["NarendraModi","RajnathSingh","Arun Jetaly","SushmaSwaraj","SureshPrabhu","SmrutiIrani","NitinGadkari"];
    let desglist=["Prime Minister","Home Minister","Finance & Corporate ","External Affairs","Railways Minister","Textiles Minister","Road Transport,Highways,Shipping"];

    

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return namelist.count;
    }

  //  /* 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        
        cell.cellTitle.text=namelist[indexPath.row];
        //cell.cellDesc.text=desglist[indexPath.row];
        let img=UIImage(named: imglist[indexPath.row]);
        cell.cellImg.image=img;
        
        
        return cell
    }
    //*/

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        
        if(segue.identifier=="DetailView")
        {
            let vc=segue.destination as! DetailViewController
            
            if let indexpath=self.tableView.indexPathForSelectedRow{
                let Title = namelist[indexpath.row] as String
                vc.sentdata1=Title
                
                let Desc = desglist[indexpath.row] as String
                vc.sentdata2=Desc
                
                let imageView = imglist[indexpath.row] as String
                vc.sentdata3=imageView
                
                
            }
            
        }
        
    }
    

}
