//
//  ViewController.swift
//  ContactsApp
//
//  Created by Liyaqat Alikhan on 9/17/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource  {
    let namesArray: [String] = ["Sai", "Brandy", "Akshay", "Loveleen", "Trisha"]
    //    let list: [String] = ["List 1", "List 2", "List 3"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = namesArray[indexPath.row]
        cell.detailTextLabel?.text = "Industry"
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "List1"
        } else if section == 1 {
            return "List 2"
        } else if section == 2 {
            return "List 3"
        } else if section == 3 {
           return "List 4"
        } else if section == 4 {
            return "List 5"
        }
           
        
        return nil
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(globalVariable)
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        //button
        let button = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 100)) //local variable is within function
        self.view.addSubview(button)
        button.setTitle("GotoContacts", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside) //#selector is used for any action which want to happen after the click we use it.
        
        //tableview
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    @objc func buttonAction() {
        let contacts = ContactViewController()
        self.present(contacts, animated: true, completion: nil)
    }
    //    func twoSendToNewController() {
    //        if let first = ContactViewController() {
    //
    //        }
    //    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = Contact(ContactName: "Michael", phoneNumber: "2563456726", email: "abcd@gmail.com", address: "1234 plato range ave")
        let contactDetailViewController = ContactDetailViewController(contact: contact)
        self.present(contactDetailViewController, animated: true, completion: nil)
        
        
    }
}


