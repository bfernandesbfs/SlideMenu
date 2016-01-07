//
//  MenuViewController.swift
//  SlideMenu
//
//  Created by Bruno Fernandes on 06/01/16.
//  Copyright © 2016 BFS. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    var mainViewController: UIViewController!
    var firstViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let mainVC = storyboard.instantiateViewControllerWithIdentifier("MainViewController") as! MainViewController
        self.mainViewController = UINavigationController(rootViewController: mainVC)
        
        let firstVC = storyboard.instantiateViewControllerWithIdentifier("FirstViewController") as! FirstViewController
        self.firstViewController = UINavigationController(rootViewController: firstVC)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeMenuPressed(sender: UIButton) {
        
        switch sender.tag {
        case 100:
            self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
            break
        case 200:
            self.slideMenuController()?.changeMainViewController(self.firstViewController, close: true)
            break
        default:
            break
        }
        
    }


}
