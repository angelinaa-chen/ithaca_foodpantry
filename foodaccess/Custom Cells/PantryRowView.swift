//
//  PantryRowView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI

struct PantryRowView: View {
    
    let pantry: FoodPantry
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(pantry.imageName)
                .resizable()
                .frame(width: 200, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            VStack(alignment: .leading, spacing: 10) {
                Text(pantry.name)
                    .font(.footnote)
                    .bold()
                Text(pantry.location)
                    .font(.caption2)
            }
            .padding(.trailing, 15)
            .padding(.vertical, 12)
        }
        .padding(.leading, 15)
    }
}

struct PantryRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            PantryRowView(pantry: FoodPantry.example1())
        }
//        PantryRowView()
    }
}
