//
//  AlertNotification.swift
//  ProTec100
//
//  Created by Jonathan Tang.
//  Copyright © 2017 tang27. All rights reserved.
//

import Foundation
import UIKit

/// Class for a single notification.
class AlertNotification {
  var type: AlertType
//  var icon: UIImage
  var content: String
  var date: Date
  var time: TimeInterval
  var location: MapLocation
  var sender: String
  
  init(type: AlertType, content: String, date: Date, time: TimeInterval,
       location: MapLocation, sender: String) {
    self.type = type
    //    TODO: Switch the 'type' to select icon
    self.content = content
    self.date = date
    self.time = time
    self.location = location
    self.sender = sender
  }
}


/// Type of alerts the system can recieve
///
/// - sms: Recieved from a user on site via SMS
/// - radio: Recieved from an officer on site via radio
/// - door: from the Texecom Ricohet API
enum AlertType {
  case sms, radio, door
}

/// Location on the floor plan.
class MapLocation {
  var x: Int
  var y: Int
  
  init(x: Int, y: Int) {
    self.x = x
    self.y = y
  }
}
