//
//  LandingScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct LandingScreen: View {
    
//    @Environment(\.presentationMode) var presentationMode
//    @Environment(\.dismiss) private var dismiss
    
    @State private var isShowHomeScreen = false
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: HomeScreen(isShowHomeScreen: $isShowHomeScreen), isActive: $isShowHomeScreen) {
                VStack(spacing: 16) {
                    
                    Text("LandingScreen")
                        .font(.largeTitle)
                        .foregroundColor(.secondary)
                    
                    Button {
                        isShowHomeScreen.toggle()
                    } label: {
                        Text("HomeScreen")
                    }
                    .font(.title)
                     
                    HStack {
                        let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .loadingScreen)
                        Text("Load LandingScreen Count : ")
                        Text("\(loadCount)")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
                }
            }
        }
    }
}

struct LandingScreen_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen()
    }
}
