//
//  MainViewController.swift
//  ProTec100
//
//  Created by Jonathan Tang on 28/10/2017.
//  Copyright © 2017 tang27. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  var notificationsTable = NotificationTableView()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let width = view.bounds.size.width
    let height = view.bounds.size.height
    
    // Add the notifications table view.
    notificationsTable.frame = CGRect(x: width * 2 / 3, y: 0, width: width / 3, height: height)
    view.addSubview(notificationsTable)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

