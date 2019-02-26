//
//  ViewController.swift
//  Todoey
//
//  Created by Janusz  on 24/02/2019.
//  Copyright © 2019 Janusz . All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = ["1111111","22222@@@@@@@","3333333333333"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
// MARK - tableView datasource method
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
// MARK - tableView delegate metod
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
// MARK - add new items
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add new Todoey item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add item", style: .default) { (action) in
            // what will happen once the user clikcks the add item button on our UIAlert
            self.itemArray.append(textField.text!)
            self.tableView.reloadData() 
            
        }
        
        alert.addTextField { (alertTextFiled) in
            alertTextFiled.placeholder = "Create new item"
            textField = alertTextFiled
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}

