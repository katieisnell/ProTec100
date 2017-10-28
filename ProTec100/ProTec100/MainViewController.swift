//
//  MainViewController.swift
//  ProTec100
//
//  Created by Jonathan Tang on 28/10/2017.
//  Copyright © 2017 tang27. All rights reserved.
//

import UIKit

var viewHeight: CGFloat = 0.0
var viewWidth: CGFloat = 0.0

class MainViewController: UIViewController {
  
  var notificationsTable = NotificationTableView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    viewWidth = view.bounds.size.width
    viewHeight = view.bounds.size.height
    
    // Add the notifications table view.
    notificationsTable.frame = CGRect(x: viewWidth * 2 / 3, y: 0, width: viewWidth / 3, height: viewHeight)
    view.addSubview(notificationsTable)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
