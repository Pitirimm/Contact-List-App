//
//  TabBarViewController.swift
//  Contact List App
//
//  Created by Yuriy Martinovskiy on 18.06.2021.
//

import UIKit

class TabBarViewController: UITabBarController{
    let contactList = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: contactList)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListTableViewController
        let detailVC = viewControllers?.last as! DetailContactListTableViewController
        
        contactListVC.contactList = persons
        detailVC.contactList = persons
    }
}
