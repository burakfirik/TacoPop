//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self : UIView {
  static var nibName: String {
    return String(describing: self)
  }
}
