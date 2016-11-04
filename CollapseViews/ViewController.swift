//
//  ViewController.swift
//  CollapseViews
//
//  Created by Lauren Nicole Roth on 11/4/16.
//  Copyright © 2016 Skedaddle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var firstHeightConstraint: NSLayoutConstraint!

  var defaultViewHeight: CGFloat?
  var defaultViewSpacing: CGFloat?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    defaultViewHeight = self.firstHeightConstraint.constant
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func hideSecondLabel(sender: AnyObject) {
    self.firstHeightConstraint.constant = self.firstHeightConstraint.constant == 0 ? defaultViewHeight! : 0

    self.view.setNeedsLayout()
    
    // Bonus: animating change
    UIView.animate(withDuration: 0.3) { () -> Void in
      self.view.layoutIfNeeded()
    }
  }
}
