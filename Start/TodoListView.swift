//
//  TodoListView.swift
//  Start
//
//  Created by Enes_Igneci on 3.03.2023.
//

import SwiftUI

struct TodoListView: View {
    var onTap: (Todo) -> Void
    @Binding var todos: [Todo]?
    init(todos: Binding<[Todo]?>, onTap: @escaping (Todo) -> Void) {
        self._todos = todos
        self.onTap = onTap
    }
    var body: some View {
        List(todos ?? []){ todo in
                VStack(alignment: .leading) {
                    Text(todo.title)
                    Text(String(todo.completed))
                }.onTapGesture {
                    DispatchQueue.main.async {
                        self.onTap(todo)
                    }
                }
            }.error()
    }
}
