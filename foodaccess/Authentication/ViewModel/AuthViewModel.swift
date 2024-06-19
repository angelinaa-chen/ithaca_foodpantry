//
//  AuthViewModel.swift
//  foodaccess
//
//  Created by Angelina Chen on 6/29/24.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

protocol AuthenticationFormProtocol {
    var formIsValid: Bool { get }
}

@MainActor // Publishes all UI updates back on the main thread. All asynchronous networking happens on the background thread, must publish UI changes back on the main thread.
class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        // When auth model initializes, check and see if there's a current user. (from Firebase)
        self.userSession = Auth.auth().currentUser
        
        Task {
            await fetchUser()
        }
    }
    
    func signIn(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser() // Some pages wont' show unless a user is fetched. (i.e. ProfileView)
        } catch {
            print("DEBUG: Failed to log in with error \(error.localizedDescription)")
        }
//        print("Sign in..")
    }
    
    // Asynchronous function that could throw an error.
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            // Creates user using Firebase code
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            // If successful result back, set the user session property.
            self.userSession = result.user
            // Create the user object.
            let user = User(id: result.user.uid, fullname: fullname, email: email)
            // Encode object through codable protocol.
            let encodedUser = try Firestore.Encoder().encode(user)
            // Load data to Firestore.
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
            await fetchUser()
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut() // Signs out users on backend.
            self.userSession = nil // Wipes out user session and takes it back to the login screen.
            self.currentUser = nil // Wipes out current user data model.
        } catch {
            print("DEBUG: Failed to sign out \(error.localizedDescription)")
        }
    }
    
    func deleteAcconut() {
        
    }
    
    func fetchUser() async {
        // Gets current user's id.
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
        self.currentUser = try? snapshot.data(as: User.self)
        
        print("DEBUG: Current user is\(self.currentUser)")
    }
    
}
