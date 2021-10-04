//
//  ViewController.swift
//  tableView_chiragh_example2
//
//  Created by Liyaqat Alikhan on 8/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
    return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tab
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        tableView.dataSource = self
    }
    


}

