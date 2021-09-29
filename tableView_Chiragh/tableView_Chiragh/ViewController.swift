//
//  ViewController.swift
//  tableView_Chiragh
//
//  Created by Liyaqat Alikhan on 7/27/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    let names = ["Apple", "Grapes", "Banana", "Orange", "BlueBerry"]
    let headerTitles = ["khan", "Ali", "Ketan", "Amresh", "Amol"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)//if we use self.view.frame.height/width it will take itself the size of different phones
        tableView.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 3
        } else if section == 2 {
            return 1
        } else if section == 3 {
            return 4
        } else if section == 4 {
            return 5
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
//        cell.headerLabel?.text = headerTitles[indexPath.row]
        cell.backgroundColor = .clear
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       //ythis line is to avoid index out of bounds. the meaning of this line is it crashes if i give a array which is out of the limit
        if section < headerTitles.count {
            return headerTitles[section]
        }
        return headerTitles[section]
        return nil
    }
}



