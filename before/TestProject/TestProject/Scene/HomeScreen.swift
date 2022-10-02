//
//  HomeScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct HomeScreen: View {
    @State private var sheetPresented = false
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presentationMode
    
    @State var currentTab = "house.fill"
    @State var count = 0
    
    var body: some View {
        ZStack {
            tabContentView
            VStack {
                HStack {
                    let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .homeScreen)
                    Text("Load homeScreen Count : ")
                    Text("\(loadCount)")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    Spacer()
                }
                Spacer()
            } 
        }
        .navigationBarHidden(true)
        .navigationTitle("")
    }
    
    var tabContentView : some View {
        VStack(spacing: 16) {
            TabView(selection: $currentTab) {
                HomeTabScreen()
                    .tag("house.fill")
                SearchTabScreen()
                    .tag("cross")
                TestTabScreen()
                    .tag("eye")
                ProfileTabScreen()
                    .tag("suit.heart")
                SettingTabScreen()
                    .tag("person.circle")
            }
            
            HStack(spacing: 0){
                ForEach(["house.fill", "cross", "eye", "suit.heart", "person.circle"], id: \.self) { image in
                    ReelsTabBarButton(image: image, isSystemImage: image != "Profile", currentTab: $currentTab)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
        .onAppear {
            count += 1
            print("HomeScreen : \(count)")
        }
    }
}

struct loadCountView : View {
    var screen : Screen
    var body: some View {
        let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: screen)
        Text("Load count \(loadCount)")
            .font(.largeTitle)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
