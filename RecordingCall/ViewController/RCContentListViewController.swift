//
//  RCMainViewController.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/20.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

class RCMainViewController: RCViewController {
  
  private let playerView = RCPlayerView()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func attribute() {
    super.attribute()
    playerView.setButtonEvent(
      vc: self,
      #selector(didTapPlayButton(_:)),
      #selector(didTapRewindButton),
      #selector(didTapSlipButton),
      #selector(didChangeSlider(_:))
    )
  }
  
  override func setupUI() {
    super.setupUI()
    [playerView].forEach {
      view.addSubview($0)
    }
    
    let guide = view.safeAreaLayoutGuide
    
    playerView.snp.makeConstraints {
      $0.top.leading.trailing.equalTo(guide)
      $0.height.equalTo(guide.snp.height).multipliedBy(0.3)
    }
    
    
    
  }
  
  // MARK: Bind Interface
  
  
  // MARK: Action
  
  @objc private func didTapPlayButton(_ sender: UIButton) {
    print(#function)
  }
  
  @objc private func didTapRewindButton(_ sender: UIButton) {
    print(#function)
  }
  
  @objc private func didTapSlipButton(_ sender: UIButton) {
    print(#function)
  }
  
  @objc private func didChangeSlider(_ sender: UISlider) {
    print(#function)
  }
}
