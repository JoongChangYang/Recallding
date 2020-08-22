//
//  RecordButton.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/23.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

class RecordButton: UIButton {
  
  override var isSelected: Bool {
    didSet {
      let backgroundColor = self.isSelected ? RCColor.pauseRecord: RCColor.startRecord
      self.backgroundColor = backgroundColor
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    attribute()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func attribute() {
    self.layer.borderWidth = 4
    self.layer.borderColor = RCColor.recordButtonBorder.cgColor
    self.backgroundColor = RCColor.startRecord
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    let radius = bounds.width > bounds.height ? bounds.height / 2: bounds.width / 2
    guard radius != self.layer.cornerRadius else { return }
    self.layer.cornerRadius = radius
  }
  
}
