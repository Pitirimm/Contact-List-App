//
//  Person.swift
//  Contact List App
//
//  Created by Yuriy Martinovskiy on 13.06.2021.
//

struct Person {
    let namePerson: String
    let surnamePerson: String
    let phonePerson: String
    let emailPerson: String
    var fullName: String {
        "\(namePerson) \(surnamePerson)"
    }
}

extension Person {
    
    static func getPerson() -> [Person] {
        let dm = DataManager.getData()
        var persons: [Person] = []
        
        for _ in 1...dm.names.count {
            if let name = dm.names.randomElement(),
               let surname = dm.surnames.randomElement(),
               let phone = dm.phones.randomElement(),
               let email = dm.emails.randomElement()
               {
                let newPerson = Person(namePerson: name,
                                       surnamePerson: surname,
                                       phonePerson: phone,
                                       emailPerson: email)
                persons.append(newPerson)
            }
        }
        
        return persons
       
    }
}
