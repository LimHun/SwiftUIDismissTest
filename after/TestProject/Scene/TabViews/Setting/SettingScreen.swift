//
//  SettingScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct SettingScreen: View {
    
//    @Environment(\.presentationMode) var presentationMode
//    @Environment(\.dismiss) private var dismiss
    
    @Binding var isSettingScreen : Bool
    @State var isSheetSettingOption : Bool = false
    @State var isSettingNext : Bool = false
    
    var body: some View {
        VStack{
            
//            NavigationLink(destination: SettingNextScreen(), isActive: $isSettingNext) {
//                EmptyView()
//            }
            
            Text("SettingScreen")
                .font(.title)
                .sheet(isPresented: $isSheetSettingOption) {
                    SettingOptionScreen(isSheetSettingOption: $isSheetSettingOption)
                }
            
            Button {
                isSettingNext.toggle()
            } label: {
                Text("SettingNext")
                    .font(.largeTitle)
            }
            
            Button {
                isSheetSettingOption.toggle()
            } label: {
                Text("SettingOptionScreen")
                    .font(.largeTitle)
            }
            
            Button("Close") {
                //isSettingScreen.toggle()
                isSettingScreen.toggle()
                //presentationMode.wrappedValue.dismiss()
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
        .fullScreenCover(isPresented: $isSettingNext) {
            SettingNextScreen()
        }
    }
}
