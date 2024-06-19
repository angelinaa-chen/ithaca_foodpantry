//
//  StartPageView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/20/24.
//

import SwiftUI
import UIKit

enum NavigationDestination: Hashable {
    case pantryListView
}

struct StartPageView: View {
    // Have a current index to index through each page.
    @State private var currentIndex = 0
    @State private var navigationPath = NavigationPath()
    let totalPages = 3

    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Color.startBackground
                    .edgesIgnoringSafeArea(.all)
                // If the selection is a current index, navigate to the page with specified tag.
                TabView(selection: $currentIndex) {
                    OnboardingPageView(
                        imageName: "onboard1",
                        title: "Welcome to IthacaAccess!",
                        description: "I'm glad you've joined us, whether you're currently looking for a next meal, or you're just curious!",
                        showDoneButton: false,
                        nextAction: {
                            goToNextPage()
                        },
                        skipAction: {
                            navigationPath.append(NavigationDestination.pantryListView)
                        }
                    )
                    .tag(0)
                    
                    OnboardingPageView(
                        imageName: "onboard2",
                        title: "Learn",
                        description: "More than 44 million people in the US face hunger, including 1 in 5 children. We understand this is an issue, and aim to fix it!",
                        showDoneButton: false,
                        nextAction: {
                            goToNextPage()
                        },
                        skipAction: {
                            navigationPath.append(NavigationDestination.pantryListView)
                        }
                    )
                    .tag(1)
                    
                    OnboardingPageView(
                        imageName: "onboard3",
                        title: "Connect",
                        description: "Connect with friends and share your experiences with the community.",
                        showDoneButton: true,
                        nextAction: {
                            navigationPath.append(NavigationDestination.pantryListView)
                        },
                        skipAction: {
                            navigationPath.append(NavigationDestination.pantryListView)
                        }
                    )
                    .tag(2)
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            // Navigates automatically to the Pantry List View, which is the main page of the app.
            .navigationDestination(for: NavigationDestination.self) { destination in
                switch destination {
                case .pantryListView:
                    MainView()
                        // Doesn't allow user to go back after dont clicking through the start pages.
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
    }

    private func goToNextPage() {
        withAnimation {
            if currentIndex < totalPages - 1 {
                currentIndex += 1
            }
        }
    }
}

struct StartPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartPageView()
    }
}
