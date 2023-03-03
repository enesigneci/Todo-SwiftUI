//
//  StartApp.swift
//  Start
//
//  Created by Enes_Igneci on 20.02.2023.
//

import SwiftUI

@main
struct StartApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = TodoViewModel()
            TodoItem(viewModel: viewModel)
        }
    }
}
