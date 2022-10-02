//
//  LoadCounterViewModel.swift
//  TestProject
//
//  Created by tunko on 2022/10/03.
//

import Foundation
 
enum Screen: String, CaseIterable {
    case loadingScreen
    case homeScreen
    case promotionsScreen
    case homeTab
    case searchTab
    case testTab
    case profileTab
    case settingTab
    case settingScreen
    case settingNextScreen
    case settingOptionScreen
}

class LoadCounterViewModel {
    
    static let loadCounterViewModel = LoadCounterViewModel()
    
    func increaseAndGetCount(for screen: Screen) -> Int {
        var count = UserDefaults.standard.integer(forKey: screen.rawValue)
        if count != 0 {
            count += 1
            UserDefaults.standard.set(count, forKey: screen.rawValue)
            return count
        } else {
            UserDefaults.standard.set(1, forKey: screen.rawValue)
            return 1
        }
    }
    
    func resetLoadCount() {
        for screen in Screen.allCases {
            UserDefaults.standard.set(0, forKey: screen.rawValue)
        }
    }
    
    private init() {
        resetLoadCount()
    }
}
