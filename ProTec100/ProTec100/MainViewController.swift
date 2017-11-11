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
    
    // Add the header gradient view.
    let headerView = UIView(frame: CGRect(x: 0, y: 0,
                                          width: viewWidth, height: viewWidth / 20))
    let gradient = CAGradientLayer()
    gradient.frame = headerView.bounds
    gradient.colors = [UIColor(red: 0.122, green: 0.420, blue: 1, alpha: 0.8).cgColor,
                       UIColor(red: 0.780, green: 0.133, blue: 1, alpha: 0.8).cgColor]
    headerView.layer.insertSublayer(gradient, at: 50)
    view.addSubview(headerView)
    
    // Add a white translucent bar over the status bar.
    let statusBarHeight = UIApplication.shared.statusBarFrame.size.height
    let statusView = UIView(frame: CGRect(x: 0, y: 0,
                                          width: viewWidth, height: statusBarHeight))
    statusView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
    view.addSubview(statusView)
    
    // Add the labels for each section.
    let floorHLabel = UILabel(frame: CGRect(x: 0, y: 10,
                                            width: 2 * viewWidth / 3, height: viewWidth / 20))
    floorHLabel.text = "Floor Plan"
    floorHLabel.textAlignment = .center
    floorHLabel.baselineAdjustment = .alignCenters
    floorHLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 16.0)
    floorHLabel.textColor = UIColor.white
    view.addSubview(floorHLabel)
    
    let notifHLabel = UILabel(frame: CGRect(x: 2 * viewWidth / 3, y: 10,
                                            width: viewWidth / 3, height: viewWidth / 20))
    notifHLabel.text = "Notifications"
    notifHLabel.textAlignment = .center
    notifHLabel.baselineAdjustment = .alignCenters
    notifHLabel.font = UIFont(name: "SourceSansPro-Semibold", size: 16.0)
    notifHLabel.textColor = UIColor.white
    view.addSubview(notifHLabel)
    
    // Add the notifications table view.
    notificationsTable.frame = CGRect(x: viewWidth * 2 / 3, y: viewWidth / 20,
                                      width: viewWidth / 3, height: 19 * viewHeight / 20)
    view.addSubview(notificationsTable)
    
    // Add the divisor line to provide seperation.
    let seperationLine = UIView(frame: CGRect(x: 2 * viewWidth / 3 - 1, y: viewWidth / 20,
                                              width: 2, height: viewHeight - viewWidth / 20))
    seperationLine.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
    view.addSubview(seperationLine)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // Prevent the device orientation to be rotated.
  func shouldAutorotate() -> Bool {
    return false
  }
  
  func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    return UIInterfaceOrientationMask.landscape
  }
  
}
