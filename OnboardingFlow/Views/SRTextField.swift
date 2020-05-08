//
//  SRTextField.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-08.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct SRTextField: View {

    @Binding var text: String
    var placeholder = "Placeholder"
    var icon = Image(systemName: "person.crop.circle")
    var color = Color.offColor
    var isSecure = false
    var onEditingChanged: ( (Bool)->()) = {_ in}

    var body: some View {
        HStack {
            if isSecure {
                SecureField(placeholder, text: self.$text, onCommit: {
                    self.onEditingChanged(false)
                    }).padding()
            } else {
                TextField(placeholder, text: self.$text, onEditingChanged: { flag in
                    self.onEditingChanged(flag)
                    }).padding()
            }
            icon.imageScale(.large)
            .padding()
            .foregroundColor(color)
        }
        .background(color.opacity(0.2))
    .clipShape(Capsule())

    }
}

struct SRTextField_Previews: PreviewProvider {
    static var previews: some View {
        SRTextField(text: .constant(""))
    }
}
