//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//


import UIKit

class TierViewController: UITableViewController{//, UICollectionViewDelegate, UICollectionViewDataSource{

//    var views : [UICollectionView]? = []
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//    
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath as IndexPath)
//        myCell.backgroundColor = .systemGreen
//            myCell.layer.cornerRadius = 10
//            return myCell
//       
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = CellClass()

        myCell.translatesAutoresizingMaskIntoConstraints = false
        myCell.heightAnchor.constraint(equalToConstant: 200).isActive = true
    
        
        return myCell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
//    func setUpView(){
//        
//       let layout = UICollectionViewFlowLayout()
//       layout.sectionInset = UIEdgeInsets(top: 50, left: 10, bottom: 10, right: 10)
//       layout.itemSize = CGSize(width: 100, height: 100)
//       layout.scrollDirection = .horizontal
//        
//            if views != nil{
//                views!.append(UICollectionView(frame: self.view.frame, collectionViewLayout:  layout))
//                
//                views?.last?.delegate = self
//                views?.last?.dataSource = self
//                
//                views?.last?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
//                //maybe because all cells in each collection view have the same reuse id?
//                
//                views?.last?.backgroundColor = UIColor.white
//                
//                views?.last?.translatesAutoresizingMaskIntoConstraints = false
//                views?.last?.heightAnchor.constraint(equalToConstant: 160).isActive = true
//                views?.last?.widthAnchor.constraint(equalToConstant: 410).isActive = true
//                
//               // view.addSubview(views!.last!)
//                
//        }
//    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
           // setUpView()
           // setUpView()
    }
    
        
    
        
}

