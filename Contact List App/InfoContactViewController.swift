//
//  InfoContactViewController.swift
//  Contact List App
//
//  Created by Yuriy Martinovskiy on 13.06.2021.
//

import UIKit

class InfoContactViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        phoneLabel.text = person?.phonePerson
        emailLabel.text = person?.emailPerson
    }
}
