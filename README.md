
[![Language](https://img.shields.io/badge/swift-4.0-green.svg)](http://swift.org)

The easiest way to create paging view controllers in swift.

## Installation
Drop in the Spring folder to your Xcode project.

Or via CocoaPods pre-release:
```CocoaPods
platform :ios, '8.0'
pod 'ViewControllersPager'
use_frameworks!
```

## Usage

Subclass PagerController (as it's a `UIViewController` subclass) and implement data source methods in the subclass.
Note: don't forgot to add `PagerController`, `PagerDataSource` and `PagerDelegate` in your ViewController to access its delegate and dataSource functions.

#### Usage with Code

```Swift
override func viewDidLoad() {
	super.viewDidLoad()
	self.dataSource = self
        self.delegate = self
}
```
## Data Source

```Swift
func numberOfTabs(pager: PagerController) -> Int
func tabViewForIndex(index: Int, pager: PagerController) -> UIView
optional func viewForTabAtIndex(index: Int, pager: PagerController) -> UIView
optional func controllerForTabAtIndex(index: Int, pager: PagerController) -> UIViewController
```

## Delegate
```Swift
optional func didChangeTabToIndex(pager: PagerController, index: Int)
optional func didChangeTabToIndex(pager: PagerController, index: Int, previousIndex: Int)
optional func didChangeTabToIndex(pager: PagerController, index: Int, previousIndex: Int, swipe: Bool)
```

## Customize
If you want, you chan change tabs appearance and customize it with your needs completely! In this part you can see configuration properties:

* Confige to set ViewControllers background color, its default value is white
```Swift
var contentViewBackgroundColor: UIColor = UIColor.white
```
* Confige to set indicator background color, its default value is red
```Swift
var indicatorColor: UIColor = UIColor.red
```
* Confige to set tabs background color, its default value is gray 
```Swift
var tabsViewBackgroundColor: UIColor = UIColor.gray
```
* Confige to set text of tabs text color, its default value is white 
```Swift
tabsTextColor: UIColor = UIColor.white
```
* Confige to set text of selected tab text color, its default value is white 
```Swift
selectedTabTextColor = UIColor.white
```
* If you setup pager with icons, you can set tabs icons contentMode, its default value is scaleAspectFit 
```Swift
tabsImageViewContentMode = UIView.ContentMode.scaleAspectFit
```
* Confige to set datasource of page viewer 
```Swift
weak var dataSource: PagerDataSource?
```
* Confige to set delegate of page viewer 
```Swift
weak var delegate: PagerDelegate?
```
* Confige to set height of the tabs, its default value is 44.0 
```Swift
var tabHeight: CGFloat = 44.0
```
* If you want set space above the page view controller, set this property, its default value is 0.0 
```Swift
var tabTopOffset: CGFloat = 0.0
```
* Confige to set tabs offset, its default value is 56.0 
```Swift
var tabOffset: CGFloat = 56.0
```
* Confige to set tabs width, its default value is 128.0 
```Swift
var tabWidth: CGFloat = 128.0
```
* Confige to set tabs title text font, its default value is boldSystemFont(ofSize: 16.0) 
```Swift
var tabsTextFont: UIFont = UIFont.boldSystemFont(ofSize: 16.0)
```
* Confige to set the height of indicator, its default value is 5.0 
```Swift
var indicatorHeight: CGFloat = 5.0
```
* You could set the position of tabs, in bottom of page view controller or in top of it, the default position is top 
```Swift
var tabLocation: PagerTabLocation = PagerTabLocation.top
```
* If you want set animation while sweept the tabs, set this property, its default value is  
PagerAnimation.during 
```Swift
var animation: PagerAnimation = PagerAnimation.during
```
* Confige Other peoperties: 
```Swift
var startFromSecondTab : Bool = false
var centerCurrentTab : Bool = false
var fixFormerTabsPositions : Bool = false
var fixLaterTabsPosition : Bool = false
var ignoreTopBarHeight : Bool = false
var ignoreBottomBarHeight : Bool = false
```

## Support RTL Languages
ViewControllersPager support RTL languages too, if you want config it for RTL languages, just set `isRTL` property to `true`, and enjoy it!
```Swift
var isRTL			: Bool = false (By default it's FALSE!)
```

## Contact
- Contact me by email: [Amin Shafiee](mailto:amin@shafi.ee) 
- See my personal website: [Shafi.ee](http://www.shafi.ee)
- Follow me on twitter: [@Shafi.ee](http://twitter.com/shafi.ee)

ViewControllersPager was a forked from [Pager](https://github.com/lucoceano/Pager) to swift.


## Licence
Pager is MIT licensed. See the LICENCE file for more info.
