//
//  ViewController.swift
//  ViewControllersPager
//
//  Created by Amin Shafiee on 1/21/19.
//  Copyright © 2019 OdinKit Co. All rights reserved.
//

import UIKit

class ViewController: PagerController, PagerDataSource, PagerDelegate {

    private lazy var FirstVC: FirstTableViewController = {
        return FirstTableViewController(nibName: "FirstTableViewController", bundle: nil)
    }()
    private lazy var secondVC: SecondTableViewController = {
        return SecondTableViewController(nibName: "SecondTableViewController", bundle: nil)
    }()
    private lazy var thirdVC: ThirdViewController = {
        return ThirdViewController(nibName: "ThirdViewController", bundle: nil)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self
        
        self.setupPager(
            tabNames: ["First Tab", "Second tab", "Third tab"],
            tabControllers: [FirstVC, secondVC, thirdVC])
        customizeTab()
        
    }

    // Customising the Tab's View
    func customizeTab() {
        indicatorColor = .blue
        tabsViewBackgroundColor = UIColor.gray.withAlphaComponent(0.1)
        contentViewBackgroundColor = UIColor.gray.withAlphaComponent(0.32)
        
        startFromSecondTab = false
        centerCurrentTab = true
        tabLocation = PagerTabLocation.top
        tabHeight = 49
        tabOffset = 36
        tabWidth = UIScreen.main.bounds.size.width/3
        fixFormerTabsPositions = false
        fixLaterTabsPosition = false
        animation = PagerAnimation.during
        selectedTabTextColor = .blue
        tabsTextColor = .black
        tabTopOffset = 0
        indicatorHeight = 2.0
        isRTL = false
    }
    
    func didChangeTabToIndex(_ pager: PagerController, index: Int){
        print("selected tab index is \(index)")
    }

}

