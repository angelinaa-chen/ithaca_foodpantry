//
//  NavigationView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/20/24.
//

import SwiftUI

struct NavigationView: View {
    @State private var selectedTab: BottomBarSelectedTab = .home
    
    var body: some View {
        VStack {
            switch selectedTab {
            case .home:
                PantryListView() // Home tab will show the PantryListView
            case .saved:
                Text("Saved View") // Placeholder for the Saved view
            case .profile:
                Text("Profile View") // Placeholder for the Profile view
            }
            
            BottomBar(selectedTab: $selectedTab)
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
