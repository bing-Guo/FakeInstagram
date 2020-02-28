import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var headShot: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        headShot.layer.borderWidth = 2
        headShot.layer.borderColor = UIColor._standard_purple.cgColor
//        headShot.layer.masksToBounds = false
        headShot.layer.cornerRadius = headShot.frame.width/2
//        headShot.clipsToBounds = true
    }

}
