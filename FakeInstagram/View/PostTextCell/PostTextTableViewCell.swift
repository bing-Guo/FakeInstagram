//
//  PostTextTableViewCell.swift
//  FakeInstagram
//
//  Created by Bing Guo on 2020/3/1.
//  Copyright © 2020 Bing Guo. All rights reserved.
//

import UIKit

class PostTextTableViewCell: UITableViewCell {

    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var postTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateWith(object: PostTextViewModel) {
        self.likeCountLabel.text = "\(object.getLikeCount()) 個讚"
        
        let authorIDAttr = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17)]
        
        let mutableString = NSMutableAttributedString()
        let authorIDAttrString = NSAttributedString(string: object.getAuthorID(), attributes: authorIDAttr)
        let spaceString = NSAttributedString(string: " ")
        let postTextString = NSAttributedString(string: object.getPostText())
        
        mutableString.append(authorIDAttrString)
        mutableString.append(spaceString)
        mutableString.append(postTextString)
        
        self.postTextLabel.attributedText = mutableString
    }
}
