//
//  PantryListView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI

struct PantryListView: View {
    
    let sections: [FilterCategory] = FilterCategory.allCases
    @State var selected: FilterCategory = .All
    @State private var pantry = FoodPantry.examples()
    @State private var selectedTab: BottomBarSelectedTab = .home

        
    var body: some View {
        NavigationView {
            VStack {
                HorizontalFilterView(selectedItem: $selected, items: sections)
                List {
                    ForEach(filteredPantry) { pantry in
                        PantryRowView2(pantry: pantry)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 0, trailing: 0))
                }
                
                .listStyle(.plain)
                .navigationTitle("Local Pantries")
                
//                BottomBar(selectedTab: $selectedTab)
            }
        }
    }
    
    // If the selected option is all, returns everything. If not, only sort out the ones that contain the same filter value.
    var filteredPantry: [FoodPantry] {
        if selected == .All {
            return pantry
        } else {
            return pantry.filter { $0.filter == selected.rawValue }
        }
    }
    
}

struct PantryListView_Previews: PreviewProvider {
    static var previews: some View {
        PantryListView()
    }
}

