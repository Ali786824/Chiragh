//
//  SubjectDetailViewController.swift
//  EducationApp
//
//  Created by Liyaqat Alikhan on 9/28/21.
//

import Foundation
import UIKit

class SubjectsDetailViewController: UIViewController {
    let subject: Subjects
    init(subject: Subjects) {
        self.subject = subject
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let newLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
        self.view.addSubview(newLabel)
        newLabel.text = "Welocome" + " " + "To" + subject.computerScience + " " + "College"
        newLabel.textColor = . black
        self.view.backgroundColor = .white
    }
}
