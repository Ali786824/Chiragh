//
//  ViewController.swift
//  EducationApp
//
//  Created by Liyaqat Alikhan on 9/28/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        collegArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = collegArray[indexPath.row]
        cell.detailTextLabel?.text = "Major"
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
    

    let collegArray: [String] = ["UCLA", "USC", "NYU", "Harvard", "Yale"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        view.addSubview(button)
        button.setTitle("SelectCollege", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self


}
    @objc func pressButton() {
        let colleges = StudyViewController()
        self.present(colleges, animated: true, completion: nil)
        }
}
