//
//  HorizontalFilterView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI

enum FilterCategory: String, CaseIterable {
    case All, Ithaca, Caroline, Danby, Dryden, Enfield, Freeville, Groton, Interlaken, Lansing, McLean, Newfield, Trumansburg
}

struct HorizontalFilterView: View {
    @Binding var selectedItem: FilterCategory
    var items: [FilterCategory]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(items, id: \.self) { item in
                    HorizontalFilterItem(filterCategory: item, selectedFilter: $selectedItem)
                        .onTapGesture {
                            selectedItem = item
                        }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct HorizontalFilterItem: View {
    let filterCategory: FilterCategory
    @Binding var selectedFilter: FilterCategory

    var body: some View {
        VStack(spacing: 0) {
            Text(filterCategory.rawValue)
                .font(.system(size: 12))
                .foregroundColor(selectedFilter == filterCategory ? .black : .gray)
            if selectedFilter == filterCategory {
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.green)
            }
        }
        .padding(.vertical, 8)
    }
}

struct HorizontalFilterView_Previews: PreviewProvider {
    static let sections = FilterCategory.allCases
        static var previews: some View {
            HorizontalFilterView(selectedItem: .constant(.Ithaca),
                                 items: FilterCategory.allCases)
    }
}
