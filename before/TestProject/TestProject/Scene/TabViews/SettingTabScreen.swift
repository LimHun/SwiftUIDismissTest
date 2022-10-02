//
//  SettingTabScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SettingTabScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            Text("SettingTabScreen")
                .font(.title)
            
            NavigationLink {
                SettingScreen()
            } label: {
                Text("SettingScreen")
            }
            .font(.title)
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .settingTab)
                Text("Load settingTab Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } 
        }
    }
}

struct SettingTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingTabScreen()
    }
}
