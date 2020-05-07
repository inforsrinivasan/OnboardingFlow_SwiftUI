//
//  PageIndicator.swift
//  OnboardingFlow
//
//  Created by Srinivasan Rajendran on 2020-05-07.
//  Copyright © 2020 Srinivasan Rajendran. All rights reserved.
//

import SwiftUI

struct PageIndicator: View {

    var currentIndex: Int = 0
    var pagesCount: Int = 4
    var onColor: Color = Color.accentColor
    var offColor: Color = Color.offColor
    var diameter: CGFloat = 10

    var body: some View {
        HStack {
            ForEach(0..<pagesCount) { i in
                Image(systemName: "circle.fill")
                .resizable()
                    .foregroundColor( i == self.currentIndex ? self.onColor : self.offColor)
                    .frame(width: self.diameter, height: self.diameter)
            }
        }
    }
}

struct PageIndicator_Previews: PreviewProvider {
    static var previews: some View {
        PageIndicator()
    }
}
