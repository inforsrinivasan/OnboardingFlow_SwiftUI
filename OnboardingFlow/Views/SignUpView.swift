//
//  SignUpView.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-08.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct SignUpView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var formOffset: CGFloat = 0

    @Binding var presentSignUp: Bool

    var body: some View {
                VStack(alignment: .center, spacing: 20) {
                Image("Logo")
                Text("Sign up").font(.title).bold()
                VStack(alignment: .center, spacing: 20) {
                    SRTextField(text: self.$email, placeholder: "Email", icon: Image(systemName: "envelope.fill")) { flag in
                        withAnimation {
                            self.formOffset = flag ? -150 : 0
                        }
                    }
                    SRTextField(text: self.$password, placeholder: "Password", icon: Image(systemName: "eye.slash.fill"), isSecure: true)
                    SRTextField(text: self.$confirmPassword, placeholder: "Confirm Password", icon: Image(systemName: "eye.slash.fill"), isSecure: true)
                    Button(action: {}) {
                        Text("Sign up")
                    }
                .modifier(ButtonModifier())
                }
                Button(action: {
                    self.presentSignUp.toggle()
                }) {
                    HStack {
                        Text("Already have an account?")
                            .accentColor(Color("accentColor"))
                    }
                }
            }
        .padding()
            .offset(y: self.formOffset)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(presentSignUp: .constant(false))
    }
}
