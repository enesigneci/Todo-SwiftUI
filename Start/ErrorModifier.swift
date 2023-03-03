//
//  ErrorModifier.swift
//  Start
//
//  Created by Enes_Igneci on 3.03.2023.
//

import Foundation
import SwiftUI

struct ErrorModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundColor(.red)
    }
}
