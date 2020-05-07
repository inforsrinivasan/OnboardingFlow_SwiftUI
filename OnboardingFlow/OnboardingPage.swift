//
//  OnboardingPage.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-07.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import Foundation

struct OnboardingPage: Identifiable {

    let id: UUID
    let image: String
    let heading: String
    let subHeading: String

    static var getAll: [OnboardingPage] {
        [
            OnboardingPage(id: UUID(), image: "screen-1", heading: "Form New Habits", subHeading: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna."),
            OnboardingPage(id: UUID(), image: "screen-2", heading: "Keep track of your progress", subHeading: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna."),
            OnboardingPage(id: UUID(), image: "screen-3", heading: "Setup your goals", subHeading: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna."),
            OnboardingPage(id: UUID(), image: "screen-4", heading: "Keep track of your progress", subHeading: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")

        ]
    }

}
