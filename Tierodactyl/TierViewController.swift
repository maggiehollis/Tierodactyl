//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//

import UIKit

class TierViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath as IndexPath)
               myCell.backgroundColor = UIColor.blue
               return myCell
    }
    
    var first : UICollectionView?
    
    @IBAction func addView(_ sender: Any) {
        var hi
    }
    
    
    func setUpView(_: UICollectionView?){
       let layout = UICollectionViewFlowLayout()
      // layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
       layout.itemSize = CGSize(width: 100, height: 100)
       layout.scrollDirection = .horizontal
        
        first = UICollectionView(frame: self.view.frame, collectionViewLayout:  layout)
        first!.delegate   = self
        first!.dataSource = self
        first!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        first!.backgroundColor = UIColor.white
        
        
        first!.translatesAutoresizingMaskIntoConstraints = false
        first!.heightAnchor.constraint(equalToConstant: 100).isActive = true
        first!.widthAnchor.constraint(equalToConstant: 400).isActive = true
        
      
        
        view.addSubview(first!)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        setUpView(first)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
