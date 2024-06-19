//
//  LoginView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/28/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("image_access")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.top, 120)
                    .padding(.bottom, 70)
                
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .autocapitalization(.none)
                        .padding(.horizontal, 40)
                    InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                        .padding(.horizontal, 40)
                        .padding(.bottom, 40)
                }
                
                // Sign in button.
                Button{
                    Task {
                        try await viewModel.signIn(withEmail: email, password: password)
                    }
                } label: {
                    HStack {
                        Text("Sign in")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 40)
                }
                .background(Color.sageGreen)
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5) // If the requirements aren't met, the button is opaque, otherwise regular color.
                .cornerRadius(20)
//                .padding(.horizontal, 40)
//                .padding(.top, 40)

                Spacer()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 5) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color.sageGreen)
                }
                
            }
        }
    }
}

//MARK: Authentical Form Protocol

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
