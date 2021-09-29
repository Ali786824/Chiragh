//
//  colleges.swift
//  EducationApp
//
//  Created by Liyaqat Alikhan on 9/28/21.
//

import Foundation
class Subjects {
    let engineering: String
    let medical: String
    let civil: String
    let computerScience: String
    let mechanical: String
    init(branch: String, medical: String, civil: String, computerScience: String, mechanical: String) {
        self.engineering = branch
        self.medical = medical
        self.civil = civil
        self.computerScience = computerScience
        self.mechanical = mechanical
    }
}
