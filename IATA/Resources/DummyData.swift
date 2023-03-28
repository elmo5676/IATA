// ********************** DummyData *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** DummyData *********************************


import SwiftUI

class DummyData {
    
    @Published var vm: MainViewModel
    
    init() {
        vm = MainViewModel()
        
        vm.filterBy_IATA("PHX")
    }
    
}

