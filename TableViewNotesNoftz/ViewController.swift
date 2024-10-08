//
//  ViewController.swift
//  TableViewNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 10/8/24.
//

import UIKit


// adds protocols to the class
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var cart = ["Apples", "Bananas", "Kiwi"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Don't forget to put identifier for the cell
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }

    
    
    
    
    
    
    
    // functions appear when you click "fix"
    // these are the functions that are in UITableViewDataSource that have no code, and that must be implemented in this class to adopt the protocol
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returns 3 rows
        return cart.count
        
    }
    // gets looped and called for each row (3 in this case bc there's 3 rows) -- called through the delegate process
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // "tableView" is a local variable (parameter!) -- kinda like "sender" in an action method
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = cart[indexPath.row]
        cell.detailTextLabel?.text = "Hi"
        return cell
        
    }

    
    
    
    
}

