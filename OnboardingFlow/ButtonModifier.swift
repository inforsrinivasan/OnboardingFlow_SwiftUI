//
//  ButtonModifier.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-08.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
        .padding(.vertical)
        .accentColor(.white)
        .background(Color.accentColor)
        .cornerRadius(30)
        .padding(.bottom, 20)
    }
}

