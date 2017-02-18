//
//  DropShadow.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

protocol DropShadow {}


extension DropShadow where Self: UIView {
  func addDropShadow() {
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = CGSize.zero
    layer.shadowRadius = 5
  }
}
