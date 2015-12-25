//
//  AddingShopViewController.swift
//  Flea
//
//  Created by Sinh Quyen Ngo on 12/17/15.
//  Copyright © 2015 ThreeStrangers. All rights reserved.
//

import UIKit

let GallerryMaxCnt = 4
let InfoSection = 0
let GalleruSection = 1


class AddingShopViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
//        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 400
        
        
        // custom navigation bar
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = MyColor.Colors.OrangePrimary
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "displayShopSegue" {
//            var newShop: Shop?
//            newShop!.name = "aaa"
//            let indexPath = NSIndexPath(forRow: 0, inSection: InfoSection)
//            let edittingCell = tableView.cellForRowAtIndexPath(indexPath) as! shopInfoTableViewCell
//            edittingCell.SetInfo(newShop!)
//            print("newShop:",newShop?.name)
//            upLoadShopToParse(newShop!)
        }
    }
    
    func upLoadShopToParse(newShop: Shop) {
        
    }
    
    
}

extension AddingShopViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        if indexPath.section == 0 {
            print("InfoCell")
            cell = tableView.dequeueReusableCellWithIdentifier("InfoCell", forIndexPath: indexPath)
        } else if indexPath.section == 1{
            cell = tableView.dequeueReusableCellWithIdentifier("GalleryCell", forIndexPath: indexPath)
        } else {
            print("OOPS, Out of section number, return default cell")
            cell = UITableViewCell()
        }
        return cell
    }
    
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 1 {
            guard let tableViewCell = cell as? shopGalleryTableViewCell else { return }
            tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
        }
    }
    
}

extension AddingShopViewController: UICollectionViewDelegate, UICollectionViewDataSource, GalleryCollectionViewCellDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func collectionView(collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
            
            return 4
    }
    
    func collectionView(collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ImageCell",
                forIndexPath: indexPath) as! GalleryCollectionViewCell
            cell.delegate = self
            cell.backgroundColor = UIColor.whiteColor()
            return cell
    }
    
    func tapImage(galleryColletionViewCell: GalleryCollectionViewCell, image: UIImage?) {
        loadImageFrom(.PhotoLibrary)
    }
    
    func loadImageFrom(source: UIImagePickerControllerSourceType) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = source
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // User selected an image
//        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
//            setImageToSelectedImageView(image)
//        }
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // User cancel the image picker
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}




