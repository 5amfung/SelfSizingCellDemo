import Foundation
import UIKit

class MyCell : UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!

//    override func layoutSubviews() {
//        super.layoutSubviews()
//        self.titleLabel.preferredMaxLayoutWidth = self.titleLabel.frame.size.width
//        self.subTitleLabel.preferredMaxLayoutWidth = self.subTitleLabel.frame.size.width
//        super.layoutSubviews()
//    }

    // Comment layoutSubviews() if didMoveToSuperview() is used.  Either way would trigger another round of layout.
    override func didMoveToSuperview() {
        self.layoutIfNeeded()
    }
}
