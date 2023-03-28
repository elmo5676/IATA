// ********************** IATAApp *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** IATAApp *********************************


import Combine
import SwiftUI
import AppKit


//https://sarunw.com/posts/swiftui-menu-bar-app/
//https://itnext.io/swiftui-keyboard-shortcuts-and-menu-bar-be22abbb3791

@main
struct MenuBarApp: App {
    
    @StateObject var vm = MainViewModel()
    
    var body: some Scene {
        MenuBarExtra("IATA", systemImage: "globe.americas.fill") {
            MainView(vm: vm)
        }
        .menuBarExtraStyle(.window)
    }
    
}
