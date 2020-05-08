//
//  LoginView.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-08.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct LoginView: View {

    // MARK: Properties

    @State private var email = ""
    @State private var password = ""
    @State private var formOffset: CGFloat = 0
    @State var presentSignUpSheet = false
    @State var presentPasswordRecoverySheet = false

    @Binding var presentLoginSheet: Bool

    var body: some View {

        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.presentLoginSheet.toggle()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .foregroundColor(Color.textColor)
                    }
                }
                .padding(.trailing, 20)
                .padding(.top, 20)
                Spacer()
            }
            VStack(alignment: .center, spacing: 20) {
                Image("Logo")
                Text("Login").font(.title).bold()
                VStack(alignment: .center, spacing: 20) {
                    SRTextField(text: self.$email, placeholder: "Email", icon: Image(systemName: "envelope.fill")) { flag in
                        withAnimation {
                            self.formOffset = flag ? -150 : 0
                        }
                    }
                    SRTextField(text: self.$password, placeholder: "Password", icon: Image(systemName: "eye.slash.fill"), isSecure: true)
                    Button(action: {}) {
                        Text("Login")
                    }
                    .modifier(ButtonModifier())
                }
                Button(action: {
                    self.presentSignUpSheet.toggle()
                }) {
                    HStack {
                        Text("Don't have an account? Sign up.")
                            .accentColor(Color("accentColor"))
                    }
                }
                .sheet(isPresented: self.$presentSignUpSheet) {
                    SignUpView(presentSignUp: self.$presentSignUpSheet)
                }
                Button(action: {
                    self.presentPasswordRecoverySheet.toggle()
                }) {
                    HStack {
                        Text("Forgot your password?")
                            .accentColor(Color("accentColor"))
                    }
                }
            }
            .padding()
            .offset(y: self.formOffset)
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(presentLoginSheet: .constant(false))
    }
}
