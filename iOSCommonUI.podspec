#
#  Be sure to run `pod spec lint iOSCommonUI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "iOSCommonUI"
s.version      = "1.1.1"
s.source        = { :git => "https://github.com/KeithGapusan/iOSCommonUI.git", :tag => "v#{s.version}" } # = "v1.0.3"
s.summary      = "A boiler plate of iOS common custom view."


s.description  = "A boiler plate of iOS common custom made UIViewControllers , UIViews, UITableViewCells, UICollectionViewCells and Loaders."

s.homepage     = "https://github.com/KeithGapusan/iOSCommonUI"
s.license      = {:type => "MIT", :file => "https://github.com/KeithGapusan/iOSCommonUI/blob/master/LICENSE"}
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

s.author             = { "Keith Randell Gapusan" => "krsgapusan@gmail.com" }
s.social_media_url   = "https://www.facebook.com/keithrednash"
s.social_media_url   = "https://www.instagram.com/keithgapusan/"


s.platform     = :ios, "10.3"
#s.source       = { :git => "https://github.com/KeithGapusan/iOSCommonUI.git", :tag => "v1.0.3" }
s.source_files  = "iOSCommonUI/**/*.{h,m,swift,storyboard,xib.json}"
s.resource_bundles = {
    'iOSCommonUI' => ['iOSCommonUI/**/*.{storyboard,xib,xcassets,json,imageset,png}']
}

end
