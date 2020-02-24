//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//


import UIKit

class TierViewController: UITableViewController{//, UICollectionViewDelegate, UICollectionViewDataSource{

    var counter = 1
    var cells : [CellClass]? = []
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cells != nil && indexPath.row%2==0{
            cells?[indexPath.row].backgroundColor = .systemGreen
            return cells![indexPath.row]
        }
        else if cells != nil{
            cells?[indexPath.row].backgroundColor = .green
            return cells![indexPath.row]
        }
        return CellClass()
        
    
        //differentiate based off of what index path each cell is!
    }
    
    //always one
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let counter = cells?.count else {return 1}
        if counter == 0 {
            return 1
        }
        return counter
    }
    
    //change to create different number of rows
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBAction func add(_ sender: Any) {
           counter+=1
        //numberOfSections(in: self as! UITableView)
    }

    
    //if someone wants to add a view we add one to numberOfSections
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if cells != nil{
            for _ in 1...10{
                cells?.append(CellClass())
            }
        }
        
    }
    
        
    
        
}

