//
//  OnboardingPageView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/20/24.
//

// TODO: Add a skip button and next button at the bottom left and right, respectively.

import SwiftUI

struct OnboardingPageView: View {
    let imageName: String
    let title: String
    let description: String
    let showDoneButton: Bool

    // All the actions that are needed for the buttons.
    var nextAction: () -> Void
    var skipAction: () -> Void

    var body: some View {
        VStack(spacing: 20) {
            Image(imageName)
                .resizable()
                .frame(width: 350, height: 330)
                .padding(.top, 60)
            
            Text(title)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding(.trailing, 40)
                .padding(.leading, 40)
            
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .foregroundColor(.gray)
            
            Spacer()

            HStack {
                Button("Skip") {
                    skipAction()
                }
                .frame(alignment: .center).padding(17)
                .background(Color.darkGrayy.opacity(0.2))
                .cornerRadius(30)
                .foregroundColor(.white)

                Spacer()
                
                // Determines whether or not the button says "Let's Begin" or "Next" depending on which slide the display is on.
                if showDoneButton {
                    Button("Let's begin!") {
                        nextAction()
                    }
                    .padding(17)
                    .background(Color.sageGreen)
                    .cornerRadius(30)
                    .foregroundColor(.white)
                } else {
                    Button("Next") {
                        nextAction()
                    }
                    .padding(17)
                    .background(Color.sageGreen)
                    .cornerRadius(30)
                    .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView(
            imageName: "onboard1",
            title: "Welcome to IthacaAccess!",
            description: "Filler text.",
            showDoneButton: false,
            nextAction: {},
            skipAction: {}
        )
    }
}
