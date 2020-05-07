//
//  PageViewContainer.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-07.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PageViewContainer<T: View>: View {

    var viewControllers: [UIHostingController<T>]
    @State var currentPage = 0

    var body: some View {

        VStack {
            OnboardingPageViewController(controllers: viewControllers, currentPage: self.$currentPage)
            PageIndicator(currentIndex: self.currentPage)
            OnboardingButton(text: currentPage == viewControllers.count - 1 ? "Get Started" : "Next") {
                if self.currentPage < self.viewControllers.count - 1 {
                    self.currentPage += 1
                }
            }
        .padding()
        }
        .background(Color.backgroundColor)

    }
}

struct PageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        PageViewContainer(viewControllers: OnboardingPage.getAll.map { UIHostingController(rootView: PageView(page: $0)) })
    }
}
