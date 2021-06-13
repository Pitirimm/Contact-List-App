//
//  ContactListTableViewController.swift
//  Contact List App
//
//  Created by Yuriy Martinovskiy on 13.06.2021.
//

import UIKit

class ContactListTableViewController: UITableViewController {
    let contactList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 50
    }
}
//extension ContactListTableViewController {
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let contact = contactList[indexPath.row]
//
//        performSegue(withIdentifier: "showDetails", sender: contact)
//    }
//}

extension ContactListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

extension ContactListTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoContactViewController,
              let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let person = contactList[indexPath.row]
        infoVC.person = person
    }
}
 
