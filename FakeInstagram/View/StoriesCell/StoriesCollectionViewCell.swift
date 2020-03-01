import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var headShot: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var borderView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        headShot.layer.cornerRadius = headShot.frame.width/2
        headShot.layer.borderColor = UIColor._standard_white.cgColor
        headShot.layer.borderWidth = 2
        
        borderView.layer.cornerRadius = borderView.frame.width/2
        borderView.layer.borderColor = UIColor._standard_purple.cgColor
        borderView.layer.borderWidth = 2
    }

}
