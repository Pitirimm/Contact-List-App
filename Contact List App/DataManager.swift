//
//  DataManager.swift
//  Contact List App
//
//  Created by Yuriy Martinovskiy on 13.06.2021.
//

struct DataManager {
    let names:[String]
    let surnames:[String]
    let phones:[String]
    let emails:[String]
}

extension DataManager {
    static func getData() -> DataManager {
        DataManager(names: ["John",
                            "Aaron",
                            "Tim",
                            "Ted",
                            "Steven"],
                    surnames: ["Smith",
                               "Dow",
                               "Isaacson",
                               "Pennyworth",
                               "Jankins"],
                    phones: ["89211234567",
                             "891122233444",
                             "89997891234",
                             "89064567234",
                             "89056667564"],
                    emails: ["shdfg@mail.ru",
                             "eyr@gmail.com",
                             "wdf@icloud.com",
                             "cmnkj@yandex.ru",
                             "nsb@rambler.ru"])
    }
}
