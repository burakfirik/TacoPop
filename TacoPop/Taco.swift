//
//  Taco.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import Foundation


enum TacoShell: Int {
  case Flour = 1
  case Corn = 2
}

enum TacoProtein: String {
  case Beef = "Beef"
  case Chicken = "Chicken"
  case Brisket = "Brisket"
  case Fish = "Fish"
  
}

enum TacoCondiment: Int {
  case Loaded =  1
  case Plain = 2
  
}

struct Taco {
  private var _id: Int!
  private var _productName: String!
  private var _shellId: TacoShell!
  private var _tacoProteinId: TacoProtein!
  private var _condimentId: TacoCondiment!
  
  var id: Int{
    return _id
  }
  
  var productName: String{
    return _productName
  }
  
  var shellId: TacoShell {
    return _shellId
  }
  
  var tacoProteinId: TacoProtein {
    return _tacoProteinId
  }
  
  var condimentId: TacoCondiment {
    return _condimentId
  }
  

  
  init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
    _id = id
    _productName = productName
    
    switch shellId {
    case 2:
     _shellId = TacoShell.Corn
    default:
      _shellId = TacoShell.Flour
    }
    
    switch proteinId {
    case 1:
      _tacoProteinId = TacoProtein.Chicken
    case 2:
      _tacoProteinId = TacoProtein.Brisket
    case 3:
      _tacoProteinId = TacoProtein.Fish
    default:
      _tacoProteinId = TacoProtein.Beef
    }
    
    switch condimentId {
    case 2:
      _condimentId = TacoCondiment.Plain
    default:
      _condimentId = TacoCondiment.Loaded
    }
    
    
    
    
  }
  
}
