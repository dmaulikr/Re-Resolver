//
//  InstructionsViewController.swift
//  Re-Resolver
//
//  Created by Keith Gilbertson on 5/15/16.
//  Copyright © 2016 Amanda and Keith. All rights reserved.
//

import UIKit


// This class is the controller for the instructions
// page.
class InstructionsViewController: UIViewController {

   
    @IBOutlet private weak var textView: UITextView!
   
    // Make sure the beginning of the text
    // is visible in the scroll pane
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textView.setContentOffset(CGPoint.zero, animated: false)
    }
   
}
