//
//  SearchTabScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SearchTabScreen: View {
    
//    @Environment(\.presentationMode) var presentationMode
//    @Environment(\.dismiss) private var dismiss
    
    @Binding var isShowHomeScreen : Bool
    
    var body: some View {
        VStack{
            Text("SearchTabScreen")
                .font(.title)
            
            Button("Close") {
                //presentationMode.wrappedValue.dismiss()
                isShowHomeScreen.toggle()
            }
            .font(.title)
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .searchTab)
                Text("Load searchTab Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } 
        }
    }
} 
