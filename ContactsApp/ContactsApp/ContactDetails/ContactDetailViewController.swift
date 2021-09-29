//
//  ContactDetailViewController.swift
//  ContactsApp
//
//  Created by Liyaqat Alikhan on 9/27/21.
//

import Foundation
import UIKit
class ContactDetailViewController: UIViewController {
    let contact: Contact
    init(contact: Contact) {
        self.contact = contact
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let newLabel = UILabel(frame: CGRect(x: 100.0, y: 100.0, width: 400, height: 200))
        self.view.addSubview(newLabel)
        newLabel.text = "Welcome " + contact.firstName + " " + contact.lastName + " " + contact.phoneNumber
        newLabel.textColor = .black
        self.view.backgroundColor = .white
        
    }
}
