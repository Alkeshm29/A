//
//  DetailViewController.swift
//  GOI
//
//  Created by gaurav on 16/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class DetailViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var srollview: UIScrollView!
    @IBOutlet weak var DetailImg: UIImageView!
    @IBOutlet weak var DetailTitle: UILabel!
    @IBOutlet weak var DetailDesc: UILabel!
    
   // @IBOutlet weak var aboutlbl: UILabel!
    @IBOutlet weak var Birthlbl: UILabel!
    @IBOutlet weak var constituencylbl: UILabel!
    @IBOutlet weak var aboutlbl: UILabel!
    
    var sentdata1:String!
    var sentdata2:String!
    var sentdata3:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DetailTitle.text=sentdata1
        DetailDesc.text=sentdata2
        DetailImg.image=UIImage(named: sentdata3)
      
        self.srollview.isScrollEnabled=true
        self.srollview.contentSize=CGSize(width:self.srollview.frame.width,height:60.0+5*(self.srollview.frame.width/16.0*5.0));
        
        
        if DetailTitle.text=="NarendraModi"
        {
            Birthlbl.text="29/10/1950"
            constituencylbl.text="Varanshi"
            aboutlbl.text="He is Prime Minister in india "
        }
        
        if DetailTitle.text=="RajnathSingh"
        {
            Birthlbl.text="29/10/1950"
            constituencylbl.text="Lakhanavu"
            aboutlbl.text="He is Prime Minister in india "
        }
        if DetailTitle.text=="Arun Jetaly"
        {
            Birthlbl.text="29/10/1950"
            constituencylbl.text="Varanshi"
            aboutlbl.text="He is Prime Minister in india "
        }
        if DetailTitle.text=="SushmaSwaraj"
        {
            Birthlbl.text="29/10/1950"
            constituencylbl.text="Vidisha"
            aboutlbl.text="He is Prime Minister in india "
        }
        
        
        if DetailTitle.text=="SureshPrabhu"
        {
            Birthlbl.text="29/10/1950"
            constituencylbl.text="Varanshi"
            aboutlbl.text="He is Prime Minister in india "
        }
        
        
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CallBtn(_ sender: Any) {
        
       // UIApplication.sharedApplication.OpenURL(NSURL(String: "tel:\\7620070706")!)
      UIApplication.shared.openURL(NSURL(string: "telprompt://7620070706")! as URL)
        
    }
    
    @IBAction func ConstBtn(_ sender: Any) {
        let latitude:CLLocationDegrees=25.271058
        let longitude:CLLocationDegrees=82.987663
        
        let regionDist:CLLocationDistance=1000;
        let coordinates=CLLocationCoordinate2DMake(latitude,longitude)
        let regionSpan=MKCoordinateRegionMakeWithDistance(coordinates,regionDist,regionDist) //<#T##latitudinalMeters: CLLocationDistance##CLLocationDistance#>, <#T##longitudinalMeters: CLLocationDistance##CLLocationDistance#>)
        let options=[MKLaunchOptionsMapCenterKey:NSValue(mkCoordinate: regionSpan.center),
                     MKLaunchOptionsMapSpanKey:NSValue(mkCoordinateSpan:regionSpan.span)]
        let placemark = MKPlacemark(coordinate:coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name="Varanshi"
        mapItem.openInMaps(launchOptions: options)
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
