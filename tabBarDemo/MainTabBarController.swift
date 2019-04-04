//
//  MainTabBarController.swift
//  tabBarDemo
//
//  Created by Ahmed Elzohry on 4/4/19.
//  Copyright © 2019 Ahmed Elzohry. All rights reserved.
//

import UIKit


class MainTabController: UITabBarController, UITabBarControllerDelegate {
    private let MENU_TAG = 111
    static let STORYBOARD_ID = "main_tab"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        // let's assume menu button is the first one
        tabBar.items?.first?.tag = MENU_TAG
        
        // set selected index for first-run
        selectedIndex = 1
    }
    
    // use it to enable/disable selection depending on viewcontroller
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        // for simplicity, check tabBarItem tag
        switch viewController.tabBarItem.tag {
        case MENU_TAG: // menu button
            // show/hide menu
            toggleSideMenu()
            return false
            
        default: // everything else
            return true
        }
    }
    
    private func toggleSideMenu() {
        // TODO:- show/hide side menu
        print("show/hide side menu ...")
    }
    
}
