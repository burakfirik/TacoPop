//
//  TacoCell.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView {

  @IBOutlet weak var tacoImage: UIImageView!
  @IBOutlet weak var tacoLabel: UILabel!
  
  var taco: Taco!
  
  
  func configureCell(taco: Taco) {
    self.taco = taco
    tacoImage.image = UIImage(named: taco.tacoProteinId.rawValue)
    tacoLabel.text = taco.productName
  }
  
  
  
}
