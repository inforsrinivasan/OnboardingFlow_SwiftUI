//
//  PasswordRecoveryView.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-08.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PasswordRecoveryView: View {

    @State private var email = ""
    @Binding var presentPasswordRecoverySheet: Bool

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image("Logo")
            Text("Recover Password").font(.title).bold()
            VStack(alignment: .center, spacing: 20) {
                SRTextField(text: self.$email, placeholder: "Email", icon: Image(systemName: "envelope.fill"))
                Button(action: {}) {
                    Text("Reset Password")
                }
            .modifier(ButtonModifier())
            }
            Button(action: {
                self.presentPasswordRecoverySheet.toggle()
            }) {
                HStack {
                    Text("Cancel")
                        .accentColor(Color("accentColor"))
                }
            }
        }
        .padding()
    }
}

struct PasswordRecoveryView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordRecoveryView(presentPasswordRecoverySheet: .constant(false))
    }
}
