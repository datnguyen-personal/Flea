//
//  GalleryCollectionViewCell.swift
//  Flea
//
//  Created by MAC on 12/25/15.
//  Copyright © 2015 ThreeStrangers. All rights reserved.
//

import UIKit

@objc protocol GalleryCollectionViewCellDelegate {
    optional func tapImage(galleryColletionViewCell: GalleryCollectionViewCell, image: UIImage?)
}

class GalleryCollectionViewCell: UICollectionViewCell, UIGestureRecognizerDelegate {
    @IBOutlet weak var galleryImageView: UIImageView!
    var delegate: GalleryCollectionViewCellDelegate?
    override func awakeFromNib() {
        galleryImageView.image = UIImage(named: "product1")
        let tap = UITapGestureRecognizer(target: self, action: Selector("handleTap:"))
        tap.delegate = self
        galleryImageView.addGestureRecognizer(tap)
    }
    
    func handleTap(sender: UITapGestureRecognizer? = nil) {
        galleryImageView.image = UIImage(named: "product4")
        delegate?.tapImage!(self, image: galleryImageView.image)
    }
    
   
}
