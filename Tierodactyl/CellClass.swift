//
//  CellClass.swift
//  Tierodactyl
//
//  Created by Margaret Hollis (student LM) on 2/22/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//

import UIKit

class CellClass: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
                
            //setUpView()
        
        
               
        // Configure the view for the selected state
    }
    
    var views : [UICollectionView]? = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath as IndexPath)
            myCell.backgroundColor = .systemGreen
            myCell.layer.cornerRadius = 10
            return myCell
       
    }
    
    func setUpView(){
           
          let layout = UICollectionViewFlowLayout()
          layout.sectionInset = UIEdgeInsets(top: 40, left: 10, bottom: 20, right: 10)
          layout.itemSize = CGSize(width: 100, height: 100)
          layout.scrollDirection = .horizontal
           
               if views != nil{
                   views!.append(UICollectionView(frame: self.frame, collectionViewLayout:  layout))
                   
                   views?.last?.delegate = self
                   views?.last?.dataSource = self
                   
                   views?.last?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
                   //maybe because all cells in each collection view have the same reuse id?
                   
                   views?.last?.backgroundColor = UIColor.white
                   
//                   views?.last?.translatesAutoresizingMaskIntoConstraints = false
//                   views?.last?.heightAnchor.constraint(equalToConstant: 160).isActive = true
//                   views?.last?.widthAnchor.constraint(equalToConstant: 410).isActive = true
                   
                self.addSubview(views!.last!)
                   
           }
       }

}
