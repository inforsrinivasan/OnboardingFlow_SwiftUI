//
//  KeyboardExtensions.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-08.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
