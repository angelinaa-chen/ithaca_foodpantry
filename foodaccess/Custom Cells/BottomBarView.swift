//
//  BottomBarView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/20/24.
//

import SwiftUI

// Creates three divisions for home, saved, and profile.
enum BottomBarSelectedTab: Int {
    case home = 0
    case saved = 1
    case profile = 2
}

struct BottomBar: View {
    @Binding var selectedTab: BottomBarSelectedTab

    var body: some View {
        HStack {

            // Home page
            Button {
                selectedTab = .home
            } label: {
                ZStack {
                    BottomBarButtonView(image: "house", text: "Home", isActive: selectedTab == .home)
                }
            }

            // Saved Page
            Button {
                selectedTab = .saved
            } label: {
                BottomBarButtonView(image: "book", text: "Saved", isActive: selectedTab == .saved)
            }

            // Profile Page
            Button {
                selectedTab = .profile
            } label: {
                BottomBarButtonView(image: "person.fill", text: "Profile", isActive: selectedTab == .profile)
            }
        }

    }
}

// Preview currently set to home.
struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar(selectedTab: .constant(.home))
    }
}

// The individual buttons on the bottom.
struct BottomBarButtonView: View {
    var image: String
    var text: String
    var isActive: Bool

    var body: some View {
        HStack(spacing: 10) {
            GeometryReader { geo in
                VStack {
                    Rectangle()
                        .frame(height: 0)
                    Image(systemName: image)
                        .resizable()
                        .frame(width: 30, height: 27)
                        // Changes color based on if the button is currently active or not.
                        .foregroundColor(isActive ? Color.sageGreen : .gray)
                    Text(text)
                        .font(.caption)
                        .foregroundColor(isActive ? Color.sageGreen : .gray)
                }
            }
        }
    }
}
