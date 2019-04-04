//
//  ViewController.swift
//  tabBarDemo
//
//  Created by Ahmed Elzohry on 4/4/19.
//  Copyright © 2019 Ahmed Elzohry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func homePressed(_ sender: Any) {
        // 1. instatiate MainTabBarController using storyboard identifier
        let mainTabController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: MainTabController.STORYBOARD_ID)
        
        // 2. you could present it on top of current view controller
        // present(mainTabController, animated: true, completion: nil)
        
        // 3. or replace app root view controller
        guard let window = UIApplication.shared.keyWindow else {
            fatalError("can't get app window")
        }
        
        window.rootViewController = mainTabController
        
        // optionally, add simple animation
        UIView.transition(with: window, duration: 0.3, options: UIView.AnimationOptions.transitionFlipFromTop, animations: nil, completion: nil)
    }
    
}

