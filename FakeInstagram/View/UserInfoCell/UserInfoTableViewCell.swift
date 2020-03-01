//
//  UserInfoTableViewCell.swift
//  FakeInstagram
//
//  Created by Bing Guo on 2020/2/28.
//  Copyright © 2020 Bing Guo. All rights reserved.
//

import UIKit

class UserInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var headShot: UIImageView!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var actionBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpImage()
        setUpBtn()
    }
    
    func setUpImage() {
        headShot.layer.borderColor = UIColor._standard_gray.cgColor
        headShot.layer.cornerRadius = headShot.frame.width / 2
        headShot.layer.borderWidth = 1
    }
    
    func setUpBtn() {
        actionBtn.tintColor = UIColor._standard_black
    }
    
    func updataWith(object: UserInfoViewModel) {
        headShot.image = UIImage(named: object.getAuthorHeadShot())
        id.text = object.getAuthorID()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func showActionList(_ sender: Any) {
    }
    
    
}
