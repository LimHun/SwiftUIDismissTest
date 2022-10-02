//
//  TestTabScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct TestTabScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            Text("TestTabScreen")
                .font(.title)
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .testTab)
                Text("Load testTab Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } 
        }
    }
}

struct TestTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestTabScreen()
    }
}
