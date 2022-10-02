//
//  SettingScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SettingScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    @State var isSheetSettingOption : Bool = false
    
    var body: some View {
        VStack{
            Text("SettingScreen")
                .font(.title)
                .sheet(isPresented: $isSheetSettingOption) {
                    SettingOptionScreen()
                }
            
            Button {
                isSheetSettingOption.toggle()
            } label: {
                Text("SettingOptionScreen")
            }
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .settingScreen)
                Text("Load settingScreen Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } 
        }
    }
}
