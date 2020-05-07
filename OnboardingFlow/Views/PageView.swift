//
//  PageView.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-07.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PageView: View {

    var page = OnboardingPage.getAll.first!

    var body: some View {
        VStack {
            Image(page.image)
            VStack {
                Text(page.heading)
                    .font(.title)
                .bold()
                .layoutPriority(1)
                    .multilineTextAlignment(.center)
                    .padding()
                Text(page.subHeading)
                    .multilineTextAlignment(.center)
            }
        .padding()
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
