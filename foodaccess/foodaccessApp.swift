//
//  foodaccessApp.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI
import Firebase

@main
struct foodaccessApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
