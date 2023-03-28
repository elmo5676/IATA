// ********************** MainView *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** MainView *********************************


import SwiftUI

struct MainView: View {
    
    @ObservedObject var vm: MainViewModel
    
    var body: some View {
        VStack {
            TextField("IATA Code", text: $vm.searchIATA)
                .textFieldStyle(.roundedBorder)
                .onReceive(vm.$searchIATA) { iata in
                    vm.filterBy_IATA(iata)
                    
                }
            
            
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(vm.filteredResults) { airport in
                        AirportView(airport: airport)
                    }
                }
                
            }
        }.padding()
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(vm: MainViewModel())
    }
}
