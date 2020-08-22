//
//  Recording.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/21.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import Foundation

class Record {
  
  let date: Date
  let capacity: Double
  let duration: Int
  let title: String
  
  
  init(date: Date = Date(), capacity: Double, duration: Int, title: String = "제목없음") {
    self.date = date
    self.capacity = capacity
    self.duration = duration
    self.title = title
  }
  
  
}

