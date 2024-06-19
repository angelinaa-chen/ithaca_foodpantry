//
//  RegistrationView.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/28/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel

    
    var body: some View {
        VStack {
            Image("image_access")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.top, 75)
                .padding(.bottom, 50)
            
            VStack(spacing: 24) {
                InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                    .autocapitalization(.none)
                InputView(text: $fullName, title: "Full Name", placeholder: "Enter your name.")
                InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecureField: true)
                
                ZStack(alignment:.trailing) {
                    InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Confirm your password", isSecureField: true)
                    
                    if !password.isEmpty && !confirmPassword.isEmpty {
                        if password == confirmPassword {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemGreen))
                        } else {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.large)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.systemRed))
                        }
                    }
                }
                .padding(.bottom, 20)
            }
            .padding(.horizontal, 40)
            
            Button{
                Task {
                    try await viewModel.createUser(withEmail: email, password: password, fullname: fullName)
                }
            } label: {
                HStack {
                    Text("Sign up")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
//                .padding(.vertical, 15)
//                .padding(.horizontal, 40)
                .frame(width: UIScreen.main.bounds.width - 80, height: 48)
                
            }
            .background(Color.sageGreen)
            .cornerRadius(20)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            .padding(.top, 24)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Sign in.")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
                .foregroundColor(Color.sageGreen)
            }
        }
    }
}

//MARK: Authentical Form Protocol

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
//        && email.contains("@")
        && !password.isEmpty
//        && password.count > 5
        && confirmPassword == password
//        && fullName.isEmpty
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
