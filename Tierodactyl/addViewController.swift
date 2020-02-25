//
//  addViewController.swift
//  Tierodactyl
//
//  Created by Margaret Hollis (student LM) on 2/25/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//

import UIKit

class addViewController: UIViewController {

    var row = ""
    
    @IBAction func text(_ sender: UITextField) {
        guard let row1 = sender.text else {return}
        row = row1
    }
    
    @IBAction func selectB(_ sender: UIButton) {
        var num = Int(row)
        ///ahhhhhh
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
