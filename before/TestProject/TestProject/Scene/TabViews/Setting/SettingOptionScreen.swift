//
//  SettingOptionScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SettingOptionScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("SettingOptionScreen")
                .font(.title)
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .settingOptionScreen)
                Text("Load settingOptionScreen Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        }
    }
}

struct SettingOptionScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingOptionScreen()
    }
}
