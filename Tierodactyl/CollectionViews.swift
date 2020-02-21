//
//  CollectionViews.swift
//
//
//  Created by Margaret Hollis (student LM) on 2/20/20.
//

import UIKit

class CollectionViews: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   let myCollectionView: UICollectionView
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath as IndexPath)
        myCell.backgroundColor = UIColor.blue
        return myCell
    }
    
        
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
     
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
            layout.itemSize = CGSize(width: 60, height: 60)
            
            let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                myCollectionView.dataSource = self
                myCollectionView.delegate = self
                myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
                myCollectionView.backgroundColor = UIColor.white
            self.view.addSubview(myCollectionView)
        }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
    }
        
       
        
    private func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
        {
            print("User tapped on item \(indexPath.row)")
        }
        
       
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
           
        }
     
    }

  

