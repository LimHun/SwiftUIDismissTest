//
//  PromotionsScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct PromotionsScreen: View {
      
    @Binding var isShowSheet : Bool
    
    var body: some View {
        VStack(spacing: 16) {
            Button("Dismiss") {
                isShowSheet.toggle() 
            }
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .promotionsScreen)
                Text("Load promotionsScreen Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        }
    }
}
