# iOSCommonUI 
![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)
![Swift 4.0.x](https://img.shields.io/badge/Swift-4.0.x-orange.svg) 
![Version](https://img.shields.io/badge/Version-1.0-green.svg)

A boiler plate of iOS common custom made UIViewControllers , UIViews, UITableViewCells, UICollectionViewCells and Loaders. 

### FeadbackView 
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
            feecbackView = FeedBackView(frame: self.tableView.frame)
            feecbackView.setFeedbackTitle(title: "show title")
            feecbackView.setFeedbackLogo(image:#imageLiteral(resourceName: "sac_logo"))        
            self.view.addSubview(feecbackView)
            feecbackView.delegate = self
        }else{
            self.feecbackView.removeFromSuperview()
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

