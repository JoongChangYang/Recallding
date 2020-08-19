//
//  RCPlayerView.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/20.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

class RCPlayerView: RCView {
  
  private let playButton = UIButton()
  private let rewindButton = UIButton()
  private let slipButton = UIButton()
  private let slider = UISlider()
  
  override func attribute() {
    super.attribute()
    
    [playButton, rewindButton, slipButton].forEach({
      $0.tintColor = RCColor.controller
      $0.contentVerticalAlignment = .fill
      $0.contentHorizontalAlignment = .fill
    })
    
    playButton.setImage(UIImage(named: "play.circle"), for: .normal)
    
    rewindButton.setImage(UIImage(named: "gobackward.10"), for: .normal)
    
    slipButton.setImage(UIImage(named: "goforward.10"), for: .normal)
    
    slider.tintColor = RCColor.controller
    slider.thumbTintColor = RCColor.controller
    
  }
  
  override func setupUI() {
    super.setupUI()
    [playButton, rewindButton, slipButton, slider].forEach {
      self.addSubview($0)
    }
    
    let playButtonSizeMultiplier = 0.24
    let sideButtonSizeMultiplier = 0.16
    
    playButton.snp.makeConstraints {
      $0.center.equalToSuperview()
      $0.height.width.equalTo(self.snp.height).multipliedBy(playButtonSizeMultiplier)
    }
    
    rewindButton.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.centerX.equalToSuperview().multipliedBy(0.5)
      $0.height.width.equalTo(self.snp.height).multipliedBy(sideButtonSizeMultiplier)
    }
    
    slipButton.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.centerX.equalToSuperview().multipliedBy(1.5)
      $0.height.width.equalTo(self.snp.height).multipliedBy(sideButtonSizeMultiplier)
    }
    
    slider.snp.makeConstraints {
      $0.bottom.leading.trailing.equalToSuperview().inset(16)
    }
    
  }
  
  // MARK: Interface
  
  func setButtonEvent(vc: RCViewController, _ playButton: Selector, _ rewindButton: Selector, _ slipButton: Selector, _ slider: Selector) {
    self.playButton.addTarget(vc, action: playButton, for: .touchUpInside)
    self.rewindButton.addTarget(vc, action: rewindButton, for: .touchUpInside)
    self.slipButton.addTarget(vc, action: slipButton, for: .touchUpInside)
    self.slider.addTarget(vc, action: slider, for: .valueChanged)
  }

}
