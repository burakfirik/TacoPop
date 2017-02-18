//
//  UICollectionView+Ext.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit


extension UICollectionView {
  func register<T: UICollectionView> (_: T.Type) where T: ReusableView, T:NibLoadableView {
    let nib = UINib(nibName: T.nibName, bundle: nil)
    register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
  }
  
  func dequeueReuseableCell <T: UICollectionViewCell>  (forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
    
    guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
      fatalError("Could not deqeueu with with identifier \(T.reuseIdentifier)")
    }
    
    return cell
  }
}

extension UICollectionViewCell: ReusableView {}
