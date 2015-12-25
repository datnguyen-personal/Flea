//
//  DisplayShopViewController.swift
//  Flea
//
//  Created by MAC on 12/24/15.
//  Copyright © 2015 ThreeStrangers. All rights reserved.
//

import UIKit

class DisplayShopViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
//        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 400

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DisplayShopViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        if indexPath.section == 0 {
            print("shopDisplayInfoCell")
            cell = tableView.dequeueReusableCellWithIdentifier("shopDisplayInfoCell", forIndexPath: indexPath) as! shopDisplayInfoTableViewCell
        }
//        } else if indexPath.section == 1{
//            cell = tableView.dequeueReusableCellWithIdentifier("GalleryCell", forIndexPath: indexPath)
//        } else {
//            print("OOPS, Out of section number, return default cell")
//            cell = UITableViewCell()
//        }
        return cell
    }
//    
//    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//        if indexPath.section == 1 {
//            guard let tableViewCell = cell as? shopGalleryTableViewCell else { return }
//            tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
//        }
//    }
    
}

