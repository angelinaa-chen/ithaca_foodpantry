//
//  PantryRowView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/19/24.
//

import SwiftUI

struct PantryRowView2: View {
    
    let pantry: FoodPantry
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(pantry.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            Text(pantry.name)
                .font(.title3)
                .bold()
            Text(pantry.location)
                .font(.caption)
                .padding(.vertical, -5)
            
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .padding(.bottom, 30)
    }
}

struct PantryRowView2_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            PantryRowView2(pantry: FoodPantry.example1())
            PantryRowView2(pantry: FoodPantry.example2())
        }
    }
}
