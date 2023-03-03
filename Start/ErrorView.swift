//
//  ErrorView.swift
//  Start
//
//  Created by Enes_Igneci on 3.03.2023.
//

import Foundation
import SwiftUI
struct ErrorView: View{
    
    var error: String
    var body: some View {
        Text(error)
            .error()
    }
}

extension View {
    func error() -> some View {
        self.modifier(ErrorModifier())
    }
}
