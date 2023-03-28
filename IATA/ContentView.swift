// ********************** ContentView *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** ContentView *********************************


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
