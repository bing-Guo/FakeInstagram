import UIKit

class PostImagesTableViewCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    var aspectConstraint : NSLayoutConstraint? {
        didSet {
            if oldValue != nil {
                postImageView.removeConstraint(oldValue!)
            }
            if aspectConstraint != nil {
                postImageView.addConstraint(aspectConstraint!)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        aspectConstraint = nil
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updataWith(object: PostImageViewModel) {
        guard let image = UIImage(named: object.getPostImage()) else { fatalError() }
        
        /* dynamic change uiimage constraint to make sure image will fit true size. */
        let aspect = image.size.width / image.size.height

        let constraint = NSLayoutConstraint(item: postImageView!, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: postImageView, attribute: NSLayoutConstraint.Attribute.height, multiplier: aspect, constant: 0.0)
        constraint.priority = UILayoutPriority(rawValue: 999)

        aspectConstraint = constraint

        postImageView.image = image
    }
}
