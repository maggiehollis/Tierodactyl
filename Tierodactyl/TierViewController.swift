//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//


import UIKit

class TierViewController: UITableViewController, UICollectionViewDragDelegate, UICollectionViewDropDelegate{
    
    func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: UICollectionViewDropCoordinator) {
        var destinationIndexPath: IndexPath
        
        if let indexPath = coordinator.destinationIndexPath{
            destinationIndexPath = indexPath
        }
        else{
            let row = collectionView.numberOfItems(inSection: 0)
            destinationIndexPath = IndexPath(item: row - 1, section: 0)
        }
        
        if coordinator.proposal.operation == .move{
            self.reorderItems(coordinator: coordinator, destinationIndexPath: destinationIndexPath, collectionView: collectionView)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
        let item = ""
        let itemProvider = NSItemProvider(object: item as NSString)
        let dragItem = UIDragItem(itemProvider: itemProvider)
        dragItem.localObject = item
        return [dragItem]
    }
    
    fileprivate func reorderItems(coordinator: UICollectionViewDropCoordinator, destinationIndexPath:IndexPath, collectionView: UICollectionView){
        if let item = coordinator.items.first,
            let sourceIndexPath = item.sourceIndexPath{
            
            collectionView.performBatchUpdates({
                
                // self.textArray.remove(at: sourceIndexPath.item)
                // self.textArray.insert(item.dragItem.localObject as! String, at: destinationIndexPath.item)
                
                collectionView.deleteItems(at: [sourceIndexPath])
                collectionView.insertItems(at: [destinationIndexPath])
            }, completion: nil)
            
            coordinator.drop(item.dragItem, toItemAt: destinationIndexPath)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal {
        if collectionView.hasActiveDrag{
            return UICollectionViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
        }
        
        return UICollectionViewDropProposal(operation: .forbidden)
    }
    
    
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
    
    //when green section of cell is clicked a collection view cell will be added
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if cells != nil{
            cells?[indexPath.row].counter+=1
            cells?[indexPath.row].collectionView.reloadData()
        }
    }
    
    //sets row height for each table view row
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;//Choose your custom row height
    }
    
    //creates a row for the table view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //basically makes even rows green and odd system green
        
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
        
        self.tableView.showsHorizontalScrollIndicator = true
        
        self.tableView.allowsSelection = true
        
    }
    
}

