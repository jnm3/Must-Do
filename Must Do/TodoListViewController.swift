//
//  ViewController.swift
//  Must Do
//
//  Created by John N McMaster III on 6/29/18.
//  Copyright © 2018 John N McMaster III. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Thing one", "Thing two", "Thing three"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArra[indexPath.row])
        
        if tableView.cellForRow(at: <#T##IndexPath#>)?.accessoryType == .checkmark {
           tableView.cellForRow(at: <#T##IndexPath#>)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: <#T##IndexPath#>)?.accessoryType = .checkmark
        }
        
        
        tableView.deselectRow(at: <#T##IndexPath#>, animated: true)
    }

}

