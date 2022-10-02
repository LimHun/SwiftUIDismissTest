//
//  SettingTabScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SettingTabScreen: View {
     
    @Binding var isShowHomeScreen : Bool
    @State var isSettingScreen : Bool = false
    
    var body: some View {
        VStack{
            Text("SettingTabScreen")
                .font(.title)
            
            Button {
                isSettingScreen.toggle()
            } label: {
                Text("SettingScreen")
                    .font(.largeTitle)
            }

            
            Button("Close") {
                isShowHomeScreen.toggle()
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
        .fullScreenCover(isPresented: $isSettingScreen) {
            SettingScreen(isSettingScreen: $isSettingScreen)
        }
    }
}
