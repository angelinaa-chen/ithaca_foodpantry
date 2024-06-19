//
//  FilterTagView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI

struct FilterTagView: View {
    // 1
    var filterData: FilterData
    
    // 2
    var body: some View {
        Label(filterData.title)
            .font(.caption)
            .padding(4)
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 8)  // 3
                    .foregroundColor(filterData.isSelected ? .accentColor : Color.black.opacity(0.6))
            )
            // 4
            .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))
    }
}

struct FilterTagView_Previews: PreviewProvider {
    static var previews: some View {
        FilterTagView(filterData: <#FilterData#>)
    }
}
