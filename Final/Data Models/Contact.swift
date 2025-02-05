//
//  Contact.swift
//  Final
//
//  Created by Eva H on 11/22/24.
//

import Foundation
import FirebaseFirestore

struct Contact: Codable{
    @DocumentID var id: String?
    var name: String
    var email: String
    var phone: Int
    
    init(name: String, email: String, phone: Int) {
        self.name = name
        self.email = email
        self.phone = phone
    }
}
