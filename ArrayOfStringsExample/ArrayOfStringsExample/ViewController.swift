//
//  ViewController.swift
//  ArrayOfStringsExample
//
//  Created by Liyaqat Alikhan on 9/1/21.
//

import UIKit

class ViewController: UITableViewController {
    let a = 10
    var b = 20
    var result: Int {
        return a+b
    }
    let array: [String] = ["Ali","Chiragh","Ragul","Jagelo", "Amol"]
    var initials: [String] {
        return array.map { element in
            return String(element.count)
    }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        print(result)
        b = 30
        print(result)
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.section]
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return initials[section]
    }
        
}

    



