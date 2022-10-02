//
//  ProfileTabScreen.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import SwiftUI

struct ProfileTabScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            Text("ProfileTabScreen")
                .font(.title)
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            
            HStack {
                let loadCount = LoadCounterViewModel.loadCounterViewModel.increaseAndGetCount(for: .profileTab)
                Text("Load profileTab Count : ")
                Text("\(loadCount)")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            } 
        }
    }
}

struct ProfileTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabScreen()
    }
}
