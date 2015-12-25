//
//  shopDisplayInfoTableViewCell.swift
//  Flea
//
//  Created by Sinh Quyen Ngo on 12/24/15.
//  Copyright © 2015 ThreeStrangers. All rights reserved.
//

import UIKit

class shopDisplayInfoTableViewCell: UITableViewCell {
    @IBOutlet weak var shopProfileImg: UIImageView!
    
    @IBOutlet weak var shopNameLanbel: UILabel!
    
    @IBOutlet weak var shopShareButton: UIButton!

    @IBOutlet weak var shopLikeCntLabel: UILabel!
    
    @IBOutlet weak var shopLikeButton: UIButton!
    
    @IBOutlet weak var shopDisplayDesciptionTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func onShare(sender: AnyObject) {
    }
    
    @IBAction func onLike(sender: AnyObject) {
    }
    
}
