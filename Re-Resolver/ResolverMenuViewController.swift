//
//  ResolverMenuViewController.swift
//  Re-Resolver
//
//  Created by Keith Gilbertson on 5/13/16.
//  Copyright © 2016 Amanda and Keith. All rights reserved.
//


import UIKit

// This is the controller for the main menu screen of Re-Resolver.
// 
// There's not much customization here as events were setup in
// the storyboard, but this controller is responsible for hiding
// the top navigation bar when the view appears, and allowing it
// to display again when the view disappears.
//
// The iOS status bar style is set to "light" for visibility on
// the dark background.

class ResolverMenuViewController: UIViewController {

    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
   
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }

}
