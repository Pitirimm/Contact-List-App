//
//  DetailContactListTableViewController.swift
//  Contact List App
//
//  Created by Yuriy Martinovskiy on 13.06.2021.
//

import UIKit

class DetailContactListTableViewController: UITableViewController {
    let contactList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
   
}

extension DetailContactListTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contactList.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = contactList[section]
        return "\(person.fullName)"
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailContactCell", for: indexPath)
        let contact = contactList[indexPath.section]
        
        if indexPath.row == 0 {
            cell.imageView?.image = UIImage(systemName: "phone")
            cell.textLabel?.text = contact.phonePerson
        } else {
            cell.imageView?.image = UIImage(systemName: "tray")
            cell.textLabel?.text = contact.emailPerson
        }
        
        return cell
    }
}

