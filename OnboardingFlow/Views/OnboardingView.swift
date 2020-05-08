//
//  OnboardingView.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-07.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            PageViewContainer(viewControllers: OnboardingPage.getAll.map { UIHostingController(rootView: PageView(page: $0))})
                .frame(maxHeight: .infinity)
        }
        .background(Color.backgroundColor)
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environment(\.colorScheme, .dark)
    }
}
