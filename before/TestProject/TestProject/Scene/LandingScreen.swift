//
//  LandingScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct LandingScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: HomeScreen()) {
                VStack(spacing: 16) {
                    Button("Exit") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    Text("LandingScreen")
                        .font(.largeTitle)
                     
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
