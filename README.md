# iOSCommonUI 
![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)
![Swift 4.0.x](https://img.shields.io/badge/Swift-4.0.x-orange.svg) 
![Version](https://img.shields.io/badge/Version-1.0-green.svg)

A boiler plate of iOS common custom made UIViewControllers , UIViews, UITableViewCells, UICollectionViewCells and Loaders. 

### FeedbackView
A custom view for internal app rating.

Example:
```swift
import iOSCommonUI

class YourViewController: UIViewController, FeedbackDelegate {

var feedbackView : FeedBackView!
var feedbackDelegate : FeedbackDelegate!

//feedback implements protocol
    func didUserPressSubmit(sender: [String : Any]) {
        /**sender will return the Dictionary of textfields and ratings**/ 
        self.showFeedback(show: false)
    }
 
    fileprivate func showFeedback(show: Bool) {
        if show {
            feedbackView = FeedBackView(frame:  CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 560))
            feedbackView.setFeedbackTitle(title: "show title")
 
            self.view.addSubview(feedbackView)
            feedbackView.delegate = self
        }else{
            self.feedbackView.removeFromSuperview()
            self.feedbackView = nil
        }
    }

}
```
### Custom TableView Cell
```swift
import iOSCommonUI

class YourViewController: UIViewController{
var headerCell : HeaderTableViewCell!

        override func viewDidLoad() {
           headerCell = HeaderTableViewCell()
           //register the nibfile of cell in tableview
           headerCell.registerNib(tableView: self.tableView)
        }
}
// Dequeing cell 
 self.tableView.dequeueReusableCell(withIdentifier:headerCell.getCellId()) as? HeaderTableViewCell {
        //insert your customization here
 }


```
### Shimmery Loader

```swift
  Loader.addLoaderTo(self.tableView)
```

