//
//  TodoViewModel.swift
//  Start
//
//  Created by Enes_Igneci on 3.03.2023.
//

import Foundation
class TodoViewModel: ObservableObject{
    @Published var todos: [Todo]?
    @Published var returnError: String?
    public func getTodos() async {
        do {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
                await setItems(returnError: "Error")
                return
            }
            let (data, _) = try await URLSession.shared.data(from: url)
            await setItems(todos: (try?JSONDecoder().decode([Todo].self, from: data)))
        } catch let error {
            await setItems(returnError: error)
        }
    }
    
    @MainActor
    private func setItems(todos: [Todo]? = nil, returnError: Error? = nil) {
        self.todos = todos
        self.returnError = returnError?.localizedDescription
    }
}

extension String: Error{
    
}
