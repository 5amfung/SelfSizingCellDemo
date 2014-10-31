import Foundation
import UIKit


struct Cell {
    var line1 = ""
    var line2 = ""
}


class ChildTableViewController : UITableViewController {

    var data: [Cell] = [
        Cell(line1: "eos rebum ullum ea", line2:"Eam."),
        Cell(line1: "Lorem ipsum.", line2: "dolor sit amet, essent ceteros ut vix."),
        Cell(line1: "In alii velit mei, eu omnis dissentias nec. Denique ocurreret et eam. Sit ne solum laoreet luptatum, in nec affert utinam, ad duis pertinax mea.", line2: "Nullam dolores maiestatis nam ea, liber diceret similique has ad."),
        Cell(line1: "cu appareat fabellas, ex veri virtute cotidieque mei, ius cu assum minimum.", line2:"Vidisse sapientem."),
        Cell(line1: "disputationi eu ius, nec unum tamquam facilis ex.", line2: "Sit an."),
        Cell(line1: "seteros partiendo", line2: "ne platonem salutatus sea"),
        Cell(line1: "congue nullam alienum nam no. His aperiam deterruisset cu, gloriatur consequuntur vim cu.", line2: "Mel ea"),
        Cell(line1: "praesent constituam", line2: "et cum tollit accommodare"),
        Cell(line1: "Lorem platonem vel ex. Appetere officiis quo an, facilis alienum pro id.", line2: "Te eos erat debet constituto, an nam eirmod periculis."),
        Cell(line1: "An", line2: "eum"),
        Cell(line1: "Ad sententiae", line2: "interesset mea, has ne mollis nusquam, viris tollit pro no. Novum primis commodo in usu, equidem persecuti honestatis an mea, ei eum iudico vivendum interpretaris."),
        Cell(line1: "Dico dolorum vituperata an sit.", line2: "Sit ne"),
        Cell(line1: "propriae adipiscing, usu ex noster honestatis inciderint", line2: "eos paulo antiopam ex. Adhuc putant definiebas in quo."),
        Cell(line1: "In alii velit mei, eu omnis dissentias nec. Denique ocurreret et eam. Sit ne solum laoreet luptatum, in nec affert utinam, ad duis pertinax mea.", line2: "Nullam dolores maiestatis nam ea, liber diceret similique has ad."),
        Cell(line1: "cu appareat fabellas, ex veri virtute cotidieque mei, ius cu assum minimum.", line2:"Vidisse sapientem"),
        Cell(line1: "disputationi eu ius, nec unum tamquam facilis ex.", line2: "Sit an"),
        Cell(line1: "seteros partiendo", line2: "ne platonem salutatus sea"),
        Cell(line1: "congue nullam alienum nam no. His aperiam deterruisset cu, gloriatur consequuntur vim cu.", line2: "Mel ea"),
        Cell(line1: "adhuc scaevola, ne accusam voluptua atomorum vel. His ad veri vivendum accommodare, agam percipit ius cu.", line2: "Odio perpetua laboramus no per."),
        Cell(line1: "disputationi eu ius, nec unum tamquam facilis ex.", line2: "Sit an"),
        Cell(line1: "seteros partiendo", line2: "ne platonem salutatus sea"),
        Cell(line1: "congue nullam alienum nam no. His aperiam deterruisset cu, gloriatur consequuntur vim cu.", line2: "Mel ea")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "onContentSizeDidChangeNotification:", name: UIContentSizeCategoryDidChangeNotification, object: nil)

        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }

    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIContentSizeCategoryDidChangeNotification, object: nil)
    }

    func onContentSizeDidChangeNotification(notification: NSNotification) {
        self.tableView.reloadData()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as MyCell
        let content = self.data[indexPath.row]

        cell.titleLabel.text = content.line1
        cell.titleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        
        cell.subTitleLabel.text = content.line2
        cell.subTitleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)

        return cell;
    }

}












