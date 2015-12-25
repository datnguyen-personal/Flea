//
//  shopTableViewCell.swift
//  Flea
//
//  Created by Sinh Quyen Ngo on 12/21/15.
//  Copyright © 2015 ThreeStrangers. All rights reserved.
//

import UIKit

class shopInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var shopProfileImgView: UIImageView!
    
    @IBOutlet weak var shopNameTextField: UITextField!
    
    @IBOutlet weak var faceLinkTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var addPhotoButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        shopProfileImgView.addSubview(addPhotoButton)
        shopProfileImgView.bringSubviewToFront(addPhotoButton)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func SetInfo(edittingShop :Shop) {
        edittingShop.name = shopNameTextField.text
        edittingShop.facebookLink = faceLinkTextField.text
        edittingShop.phone = phoneTextField.text
        edittingShop.email = emailTextField.text
    }

}
