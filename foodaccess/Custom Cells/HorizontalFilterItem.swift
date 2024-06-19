//
//  HorizontalFilterItem.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI

struct HorizontalFilterItem: View {
    let filterCategory: FilterCategory // 2
        @Binding var selectedFilter: FilterCategory // 3
        var body: some View {
            VStack(spacing: 0.0) { // 4
                Text(filterCategory.rawValue) // 5
                    .font(.system(size: 12.0))
                   .foregroundColor(selectedFilter == filterCategory ? .black : .gray)
                if selectedFilter == filterCategory { // 6
                    Rectangle()
                        .frame(height: 2.0)
                        .foregroundColor(.orange)
                }
            }
        }
}
