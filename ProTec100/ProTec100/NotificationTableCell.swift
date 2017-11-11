//
//  NotificationTableCell.swift
//  ProTec100
//
//  Created by Jonathan Tang on 28/10/2017.
//  Copyright © 2017 tang27. All rights reserved.
//

import UIKit

/// Cell for a single notification.
class NotificationTableCell: UITableViewCell {
  
  var cellNotification: AlertNotification
  
  init(notification: AlertNotification) {
    self.cellNotification = notification
    super.init(style: .default, reuseIdentifier: "cellNotification")
    
    // Setup the cell
    
    // Find out which icon to use
    var iconName = "icons8-"
    switch cellNotification.type {
    case .doorOpen: iconName += "exit"
    case .doorClose: iconName += "enter"
    case .sms: iconName += "sms"
    case .radio: iconName += "radio_tower"
    }
    
    // Add the icon to the cell
    let iconImage = UIImageView(frame: CGRect(x: 10, y: 10, width: viewWidth / 15 - 20, height: viewWidth / 15 - 20))
    iconImage.image = UIImage(named: iconName)
    contentView.addSubview(iconImage)
    
    // Add the content title to the cell
    let cellTitle = UILabel(frame: CGRect(x: viewWidth / 15, y: 10, width: 4 * viewWidth / 15 - 10, height: viewWidth / 24 - 15))
    switch cellNotification.type {
    case .doorOpen: cellTitle.text = "Door Sensor - Opened"
    case .doorClose: cellTitle.text = "Door Sensor - Closed"
    case .sms: cellTitle.text = "SMS Message"
    case .radio: cellTitle.text = "Radio Call"
    }
    cellTitle.font = UIFont(name: "SourceSansPro-Semibold", size: 17.0)
    contentView.addSubview(cellTitle)
    
    // Add the content message to the cell
    let cellMessage = UILabel(frame: CGRect(x: viewWidth / 15, y: viewWidth / 24 - 10, width: 4 * viewWidth / 15 - 10, height: viewWidth / 24 - 15))
    cellMessage.text = cellNotification.content
    cellMessage.font = UIFont(name: "SourceSansPro-Regular", size: 17.0)
    contentView.addSubview(cellMessage)
    
    // Add the timestamp of the message
    let cellTime = UILabel(frame: CGRect(x: 4 * viewWidth / 15 + 10, y: viewWidth / 24 - 25, width: viewWidth / 15 - 10, height: viewWidth / 24 - 15))
    cellTime.text = "13:05"
    cellTime.font = UIFont(name: "SourceSansPro-Semibold", size: 17.0)
    contentView.addSubview(cellTime)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
