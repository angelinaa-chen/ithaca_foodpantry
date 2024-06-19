//
//  FilterModel.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import Foundation
import SwiftUI

struct FilterData: Identifiable {
    var id = UUID()
//    var imageName: String
    var title: String
    var isSelected: Bool = false
}

class FilterModel: NSObject, ObservableObject {
    
    // 1. normally you would get this data from a remote service, so factor that in if you use
    // this in your own projects. If this data is not static, consider making it @Published
    // so that any changes to it will get reflected by the UI
    var data = [
        FilterData(title: "Ithaca"),
        FilterData(title: "Caroline"),
        FilterData(title: "Danby"),
        FilterData(title: "Dryden"),
        FilterData(title: "Enfield"),
        FilterData(title: "Freeville"),
        FilterData(title: "Groton"),
        FilterData(title: "Interlaken"),
        FilterData(title: "Lansing"),
        FilterData(title: "McLean"),
        FilterData(title: "Newfield"),
        FilterData(title: "Trumansburg"),
    ]
    
    // 2. these are the FilterData that have been selected using the toggleFilter(at:)
    // function.
    @Published var selection = [FilterData]()
    
    // 3. toggles the selection of the filter at the given index
    func toggleFilter(at index: Int) {
        guard index >= 0 && index < data.count else { return }
        data[index].isSelected.toggle()
        refreshSelection()
    }
    
    // 4. clears the selected items
    func clearSelection() {
        for index in 0..<data.count {
            data[index].isSelected = false
        }
        refreshSelection()
    }
    
    // 5. remakes the published selection list
    private func refreshSelection() {
        let result = data.filter{ $0.isSelected }
        withAnimation {
            selection = result
        }
    }
}
