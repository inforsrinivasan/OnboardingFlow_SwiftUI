//
//  OnboardingButton.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-07.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct OnboardingButton: View {

    var text = "Next"
    var action: (() -> ()) = {}

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(text)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.vertical)
                    .accentColor(.white)
                    .background(Color.accentColor)
                    .cornerRadius(30)
            }
        }
    }
}

struct OnboardingButton_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButton()
    }
}
