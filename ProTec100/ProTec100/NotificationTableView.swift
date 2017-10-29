//
//  NotificationTableView.swift
//  ProTec100
//
//  Created by Jonathan Tang on 28/10/2017.
//  Copyright © 2017 tang27. All rights reserved.
//

import UIKit

class NotificationTableView: UITableView , UITableViewDelegate, UITableViewDataSource {
  
  override init(frame: CGRect, style: UITableViewStyle) {
    super.init(frame: frame, style: style)
    
    // Setup the table view.
    self.delegate = self
    self.dataSource = self
    self.allowsSelection = false
    self.separatorStyle = .singleLine
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - TableView Row Height
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return viewWidth / 15
  }
  
  // MARK: - TableView Data Source
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let notif = AlertNotification(type: .radio, content: "Room 215D", date: Date(timeIntervalSinceNow: 0), location: MapLocation(x: 0, y: 0), sender: "Sender")
    let cell = NotificationTableCell(notification: notif)
    return cell
  }
}
