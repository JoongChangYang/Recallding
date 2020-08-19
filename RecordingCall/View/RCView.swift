//
//  RCView.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/20.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

class RCView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    attribute()
    setupUI()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  func attribute() {
    backgroundColor = RCColor.background
  }
  
  func setupUI() { }
}
