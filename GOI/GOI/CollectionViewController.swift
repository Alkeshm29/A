//
//  CollectionViewController.swift
//  GOI
//
//  Created by gaurav on 29/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var imglist=["NarendraModi.jpeg","RajnathSingh.jpeg","Arun Jetaly.jpeg","SushmaSwaraj.jpeg","SureshPrabhu.jpeg","SmrutiIrani.jpeg","NitinGadkari.jpeg","NarendraModi.jpeg","RajnathSingh.jpeg","Arun Jetaly.jpeg","SushmaSwaraj.jpeg","SureshPrabhu.jpeg","SmrutiIrani.jpeg","NitinGadkari.jpeg"];
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imglist.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for:indexPath) as! CollectionViewCell
        cell.imageView.image=UIImage(named:imglist[indexPath.row])
        return cell
        
        
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
