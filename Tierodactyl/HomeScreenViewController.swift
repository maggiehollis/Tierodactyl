//
//  HomeScreenViewController.swift
//  Tierodactyl
//
//  Created by Anne Hamilton (student LM) on 2/19/20.
//  Copyright © 2020 Margaret Hollis (student LM). All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
   
    //all the lists
    var lists : [UITableViewCell]? = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        guard var count = lists?.count else {return 1}
//        return count
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if lists != nil{
//            return lists![indexPath.row]
//        }
        
        var cell = HomeScreenTableViewCell()
        
        cell.textLabel?.text = "List 1"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if lists != nil{
//            lists![indexPath.row]
//        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    func setUpTable(){
        //var tableView = UITableView()
               tableView.delegate = self
               tableView.dataSource = self
    
        //tableView.register(HomeScreenTableViewCell(), forCellReuseIdentifier: "MyCell")
        
        view.addSubview(tableView);

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setUpTable()

        // Do any additional setup after loading the view.
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
