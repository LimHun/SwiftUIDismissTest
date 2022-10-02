//
//  HomeTabScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct HomeTabScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            Text("HomeTabScreen")
                .font(.title)
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .homeTab)
                Text("Load homeTab Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } 
        } 
    }
}

struct HomeTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabScreen()
    }
}
