// ********************** AirportView *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** AirportView *********************************


import SwiftUI

struct AirportView: View {
    
    let airport: Airport
    
    var body: some View {
        VStack {
            Text(airport.iata)
            Text(airport.name)
            Text(airport.country)
        }//.padding()
        
    }
}

struct AirportView_Previews: PreviewProvider {
    static var previews: some View {
        AirportView(airport: DummyData().vm.filteredResults.first!)
    }
}
