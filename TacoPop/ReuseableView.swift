//
//  ReusableView.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

protocol ReusableView: class {}


extension ReusableView  where Self: UIView {
  
  static var reuseIdentifier: String {
    return String(describing: self)
  }
}
