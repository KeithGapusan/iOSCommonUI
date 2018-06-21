# iOSCommonUI
A boiler plate of iOS common custom made UIViewControllers , UIViews, UITableViewCells, UICollectionViewCells and Loaders. 

# FeadbackView 
A custom view that the user can use it for internal app rating
```swift
import iOSCommonUI
class YourViewController: UIViewController, FeedbackDelegate {
var feecbackView : FeedBackView!
var feedbackDelegate : FeedbackDelegate!

//feedback implements protocol
func didUserPressSubmit(sender: [String : Any]) {
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

