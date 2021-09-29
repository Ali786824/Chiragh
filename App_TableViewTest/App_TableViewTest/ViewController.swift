//
//  ViewController.swift
//  App_TableViewTest
//
//  Created by Liyaqat Alikhan on 8/4/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let nameArray = ["Ketan", "Kapil", "Ali", "Khan", "vipul"]
    let textHeader = ["Leapord", "Tiger", "Elephant", "Hippo", "Cat"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else if section == 1 {
            return 3
        } else if section == 2 {
            return 4
        } else if section == 3 {
            return 1
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        cell.backgroundColor = .clear
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < textHeader.count {
            return textHeader[section]
        }
        return nil
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = UIColor.blue.withAlphaComponent(0.7)
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        tableView.dataSource = self
        view.addSubview(tableView)
        
        
    }


}

