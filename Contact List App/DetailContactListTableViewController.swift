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
        contactList.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        ""
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailContactCell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

