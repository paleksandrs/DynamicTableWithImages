
import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var customImageView: UIImageView!

    internal var aspectConstraint : NSLayoutConstraint? {
        didSet {
            if oldValue != nil {
                customImageView.removeConstraint(oldValue!)
            }
            if aspectConstraint != nil {
                customImageView.addConstraint(aspectConstraint!)
            }
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        aspectConstraint = nil
    }
    
    func setCustomImage(image : UIImage) {
        
        let aspect = image.size.width / image.size.height
        
        let constraint = NSLayoutConstraint(item: customImageView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: customImageView, attribute: NSLayoutAttribute.height, multiplier: aspect, constant: 0.0)
        constraint.priority = 999
        
        aspectConstraint = constraint
        
        customImageView.image = image
    }
}
