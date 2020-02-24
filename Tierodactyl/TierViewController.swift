//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//


import UIKit

class TierViewController: UITableViewController{//, UICollectionViewDelegate, UICollectionViewDataSource{

    //keeps track of how many rows to print out - needed because array is optional
    var counter = 0
    //array of optional cells, each one represents a row
    var cells : [CellClass]? = []
    
    //this is called when you press the plus button, it adds another row
    @IBAction func add(_ sender: UIBarButtonItem) {
        if cells != nil{
            cells?.append(CellClass())
            //THIS IS HOW YOU RELOAD SOMETHING
            self.tableView.reloadData()
        }
    }
    
    //sets row height for each table view row
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;//Choose your custom row height
    }
    
    //creates a row for the table view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //basically makes even rows green and odd system green
        if cells?[indexPath.row].isSelected == true {
            cells?[indexPath.row].counter+=1
            self.tableView.reloadData()
        }
        
        if cells != nil && indexPath.row%2==0 && cells!.count>0{
            cells?[indexPath.row].backgroundColor = .systemGreen
            return cells![indexPath.row]
        }
        else if cells != nil && cells!.count>0{
            cells?[indexPath.row].backgroundColor = .green
            return cells![indexPath.row]
        }
        return UITableViewCell()
    }
    
    //when the table view is reloaed this sets the number of rows there will be
    //counter keeps track of the number of rows in the array of cells and returns it
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let counter = cells?.count else {return 0}
        return counter
    }
    
    //this is completley irrelevant, just keep it at one
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    //also has no current function
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
}

