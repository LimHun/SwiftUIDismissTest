//
//  PromotionsScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct PromotionsScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 16) {
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
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

struct PromotionsScreen_Previews: PreviewProvider {
    static var previews: some View {
        PromotionsScreen()
    }
}
