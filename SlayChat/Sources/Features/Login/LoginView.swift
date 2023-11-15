//
//  LoginView.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct LoginView: View {

    @State private var userName: String = ""
    @State private var password: String = ""

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Spacer()

                Text("💅🏽")
                    .font(.system(size: 60))

                Text("Welcome to SlayChat")
                    .font(.largeTitle)
                    .bold()

                TextField("User name", text: $userName)
                    .textFieldStyle(.roundedBorder)

                TextField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                Button {
                    print("")
                } label: {
                    Text("Log In")
                        .bold()
                        .frame(maxWidth: .infinity)
                }
                .borderedProminentButton(colored: .accentColor)

                Button("Create An Account") {
                    print("")
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
