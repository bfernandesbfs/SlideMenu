//
//  ContainerViewController.swift
//  SlideMenu
//
//  Created by Bruno Fernandes on 06/01/16.
//  Copyright © 2016 BFS. All rights reserved.
//

import UIKit

class ContainerViewController: SlideMenuController {

    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier("Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier("Menu") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }
    
}
