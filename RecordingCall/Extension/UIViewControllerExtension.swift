//
//  UIViewControllerExtension.swift
//  RecordingCall
//
//  Created by 양중창 on 2020/08/21.
//  Copyright © 2020 didwndckd. All rights reserved.
//

import UIKit

extension UIViewController {
  private func noticeAlert(_ title: String? = nil, _ message: String? = nil, _ preferredStyle: UIAlertController.Style = .alert) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    present(alertController, animated: true)
  }
}
