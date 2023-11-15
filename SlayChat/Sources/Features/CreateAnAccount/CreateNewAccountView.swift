//
//  CreateNewAccountView.swift
//  SlayChat
//
//  Created by Rafael Schmitt on 15/11/23.
//

import SwiftUI

struct CreateNewAccountView: View {

    @State private var userName: String = ""
    @State private var password: String = ""

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                TextField("User name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                Button {
                    print("")
                } label: {
                    Text("Create Account")
                        .bold()
                        .frame(maxWidth: .infinity)
                }
                .borderedProminentButton(colored: .accentColor)
            }
            .padding()
        }
        .navigationTitle("Create An Account")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    NavigationStack {
        CreateNewAccountView()
    }
}
