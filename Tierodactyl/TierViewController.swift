//
//  TierViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//


import UIKit

class TierViewController: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDragDelegate, UICollectionViewDropDelegate{
    
    //keeps track of how many rows to print out - needed because array is optional
    var counter = 0
    //array of optional cells, each one represents a row
    
    var cells : [UICollectionView] = []
    var items = ["1","2","3","4"]
    
    var collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 1, height: 1), collectionViewLayout: UICollectionViewFlowLayout())
    var source = IndexPath()
    
    // number of cells in a collectionview, this will be made similar to corresponding class in TierVC
    //when we create funcationality to add elements to each row
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCell", for: indexPath) as! CollectionViewCell
        
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .black
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
        
        //this collectionview is what you are dragging from
        collection = collectionView
        source = indexPath
        
        let item = ""
        let itemProvider = NSItemProvider(object: item as NSString)
        let dragItem = UIDragItem(itemProvider: itemProvider)
        dragItem.localObject = item
        return [dragItem]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UICollectionViewDropProposal {
        
        return UICollectionViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
    }
    
    fileprivate func reorderItems(coordinator: UICollectionViewDropCoordinator, destinationIndexPath:IndexPath, collectionView: UICollectionView){
        
        //this collectionview is the one where you are trying to drop it
       
        if let item = coordinator.items.first {
        
           collectionView.performBatchUpdates({
                collectionView.insertItems(at: [destinationIndexPath])
           }, completion: nil)
            
            
//            collection.performBatchUpdates({
//                collection.deleteItems(at: [source])
//            }, completion: nil)
            
            
            //removed item from collectionview that coordinator relates to so doesn't work
            coordinator.drop(item.dragItem, toItemAt: destinationIndexPath)
            
            
        }
        
//        collectionView.reloadData()
//        collection.reloadData()
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, performDropWith coordinator: UICollectionViewDropCoordinator) {
        var destinationIndexPath: IndexPath
        
        //this is called when you drop the thingy
        
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

    //this is called when you press the plus button, it adds another row
    //    @IBAction func add(_ sender: UIBarButtonItem) {
    //
    //        cells.append(UICollectionView())
    //        //THIS IS HOW YOU RELOAD SOMETHING
    //        self.tableView.reloadData()
    //
    //    }
    
    //when green section of cell is clicked a collection view cell will be added
    
    //    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        if cells != nil{
    //            selected = indexPath.row
    //            // cells[indexPath.row].counter+=1
    //            cells[indexPath.row].dragInteractionEnabled = true
    //            //            cells?[indexPath.row].collectionView.dragDelegate = self
    //            //            cells?[indexPath.row].collectionView.dropDelegate = self
    //
    //            cells[indexPath.row].reloadData()
    //       }
    //   }
    
    //sets row height for each table view row
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0;//Choose your custom row height
    }
    
    //creates a row for the table view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //basically makes even rows green and odd system green
        
        var cell = cells[indexPath.row]
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
    
        cell = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        cell.register(CollectionViewCell.self, forCellWithReuseIdentifier: "ViewCell")
        cell.delegate = self
        cell.dataSource = self
        cell.frame = CGRect(x: 0, y: 0, width: 314 , height: 70)
        cell.backgroundColor = .white
        cell.allowsSelection = true
        cell.dragInteractionEnabled = true
        cell.dragDelegate = self
        cell.dropDelegate = self
        
        var table = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as! IndexPath) as! TierTableViewCell
        table.addSubview(cell)
        table.backgroundColor = .systemGray
        table.setProps(textt: "hi")
        
        return table
        
        
        
    }
    
    //when the table view is reloaed this sets the number of rows there will be
    //counter keeps track of the number of rows in the array of cells and returns it
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //this is completley irrelevant, just keep it at one
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    //also has no current function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        var filler = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        
        
        for i in 0...9{
            cells.append(filler)
        }
        
        self.tableView.allowsSelection = true
        
    }
    
}


