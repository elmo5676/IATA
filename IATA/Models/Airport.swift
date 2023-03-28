// ********************** Airport *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** Airport *********************************


import Foundation


struct Airport: Codable, Identifiable, Hashable {
    var id: String { iata }
    let iata: String
    let name: String
    let country: String
    
    func printSelf() {
        print("--------------------------")
        print("iata:\t\t\(iata)")
        print("name:\t\t\(name)")
        print("country:\t\(country)")
    }
}


