//
//  MainVC.swift
//  TacoPop
//
//  Created by Burak Firik on 2/18/17.
//  Copyright © 2017 Code Path. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
  
  
   @IBOutlet weak var  headerView: HeaderView!
  
   @IBOutlet weak var collectionView: UICollectionView!
  
  var ds : DataService = DataService.instance

    override func viewDidLoad() {
        super.viewDidLoad()
      
      
        ds.loadDelicousTacoData()
        ds.delegate = self
      
      collectionView.delegate = self
      collectionView.dataSource = self

      
        headerView.addDropShadow()
      
      let nib = UINib(nibName: "TacoCell", bundle: nil)
      collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
      
        // Do any additional setup after loading the view.
 
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  func deliciousTacoDataLoaded() {
    print("delicous data taco loaded")
  }
  
}

extension MainVC : UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return ds.tacoArray.count
  }
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
      cell.configureCell(taco: ds.tacoArray[indexPath.row])
      return cell
    } else {
      return UICollectionViewCell()
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 95, height: 95)
  }
  
}
