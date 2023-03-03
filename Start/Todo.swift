//
//  Todo.swift
//  Start
//
//  Created by Enes_Igneci on 22.02.2023.
//

import Foundation
struct Todo: Codable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
    init(userId: Int, id: Int, title: String, completed: Bool) {
        self.userId = userId
        self.id = id
        self.title = title
        self.completed = completed
    }
}
