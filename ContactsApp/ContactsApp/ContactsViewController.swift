//
//  ContactsViewController.swift
//  ContactsApp
//
//  Created by Liyaqat Alikhan on 9/17/21.
//

import Foundation
import UIKit

let globalVariable = 10 //global variable is when you place it out of the class
class ContactViewController: UIViewController {
    var arrayOfContacts = [Contact]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        arrayOfContacts.append(Contact(ContactName: "Liyaqat", phoneNumber: "56226627223", email: "abns@gmail.com", address: "823 ave bay ca" ))
        arrayOfContacts.append(Contact(ContactName: "Chiragh", phoneNumber: "8752345678", email: "iuyh@yahoo.com", address: "765 air ca"))
        arrayOfContacts.append(Contact(ContactName: "Arun", phoneNumber: "765234567", email: "oiuyh@yahoo.com", address: "876 jam, ca"))
    }
    
}
