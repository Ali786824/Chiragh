//
//  Contact.swift
//  ContactsApp
//
//  Created by Liyaqat Alikhan on 9/27/21.
//

import Foundation
class Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    let address: String
    init(ContactName: String, phoneNumber: String, email: String, address: String) {
        self.firstName = ContactName
        self.lastName = ContactName
        self.phoneNumber = phoneNumber
        self.email = email
        self.address = address // we hve to give value for all the variables in tge initializor else it will throw return error
    }
    
}
