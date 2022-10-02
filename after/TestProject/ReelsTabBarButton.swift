//
//  ReelsTabBarButton.swift
//  SwiftUIPractice
//
//  Created by tunko on 2022/09/03.
//

import SwiftUI

struct ReelsTabBarButton : View {
    var image: String
    var isSystemImage: Bool
    @Binding var currentTab: String

    var body: some View {
        Button {
            withAnimation {
                currentTab = image
            }
        } label: {
            ZStack {
                if isSystemImage {
                    Image(systemName: image)
                        .font(.title2)
                }
                else {
                    Image(image)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
            }
            .foregroundColor(currentTab == image ? currentTab == "Profile" ? .white : .primary : .gray)
            .frame(maxWidth: .infinity)
        }

    }
}
