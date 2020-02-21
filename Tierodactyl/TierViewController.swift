//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//

import UIKit

class TierViewController: UIViewController {
   
   var views = [CollectionViews]()
    
    @IBAction func addView(_ sender: Any) {
        self.views.append(CollectionViews())
        view.addSubview(views.last!.myCollectionView)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        //initial collectionView
        views[0] = CollectionViews()
    
        
        
        
        
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
