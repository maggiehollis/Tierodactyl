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
    let tbView = UITableView();
    var lists : [UITableViewCell]? = []
    var stuff = ["List1"]
    

//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        guard var count = lists?.count else {return 1}
//        return count
//        return 1
//    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if lists != nil{
//            return lists![indexPath.row]
//        }
        
//        var cell = HomeScreenTableViewCell()
//
//        cell.textLabel?.text = "List 1"
//        return cell
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if lists != nil{
//            lists![indexPath.row]
//        }
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var safeArea: UILayoutGuide!
    
    func setUpTable(){
        view.addSubview(tbView);
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        view.backgroundColor = .black
        safeArea = view.layoutMarginsGuide
        
        //var tableView = UITableView()
               tableView.delegate = self
               tableView.dataSource = self
    
        //tableView.register(HomeScreenTableViewCell(), forCellReuseIdentifier: "MyCell")
        
        view.addSubview(tableView);
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuff.count
      }
    
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = stuff[indexPath.row]
        return cell
      }
    
    
    override func viewDidLoad() {
        
            setUpTable()
        stuff.append("List2")
        super.viewDidLoad()
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
