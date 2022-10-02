//
//  SettingNextScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SettingNextScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack {
            Text("SettingNextScreen")
                
            Button {
                dismiss()
            } label: {
                Text("Close")
                    .font(.title)
            }

            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .settingNextScreen)
                Text("Load settingScreen Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        }
    }
}
