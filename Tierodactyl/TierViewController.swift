//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//

import UIKit

class TierViewController: UIViewController{//, UICollectionViewDelegate, UICollectionViewDataSource {
   
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//         let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath as IndexPath)
//               myCell.backgroundColor = UIColor.blue
//               return myCell
//    }
    
    var first : UICollectionView?
    
    @IBAction func addView(_ sender: Any) {
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

      // let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 111, height: 100)
//        layout.scrollDirection = .horizontal
        
        first = UICollectionView(frame: self.view.frame, collectionViewLayout:  UICollectionViewFlowLayout())
//        first.delegate   = self
//        first.dataSource = self
 //       first.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
 //       first.backgroundColor = UIColor.white
        
        first!.translatesAutoresizingMaskIntoConstraints = false
        first!.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        first!.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        first!.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 0).isActive = true
        first!.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.addSubview(first!)
        
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
