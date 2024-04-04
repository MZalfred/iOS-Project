//
//  ContentView.swift
//  FitShirtsApp
//
//  Created by Alfred Kafurama on 03/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var message: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Sign In")) {
                    TextField("Username", text: $username)
                    Button("Sign In") {
                        // Integrate with Firebase for sign-in
                        self.message = "Signed in as \(self.username)"
                    }
                    Button("Sign Out") {
                        // Integrate with Firebase for sign-out
                        self.message = "Signed out"
                    }
                }
                Section {
                    Text(message)
                }
            }
            .navigationBarTitle("FIT SHIRTS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
