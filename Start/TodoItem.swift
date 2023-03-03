//
//  ContentView.swift
//  Start
//
//  Created by Enes_Igneci on 20.02.2023.
//

import SwiftUI

struct TodoItem: View {
    @ObservedObject var viewModel: TodoViewModel
    @State var isSheetOpened: Bool = false
    @State var lastTodo: Todo?
    var body: some View {
        VStack {
            errorView
            TodoListView(todos: $viewModel.todos,onTap: {
                todo in
                isSheetOpened = true
                DispatchQueue.main.async {
                    lastTodo
                     = todo
                }
                
            })
        }.task{
            await viewModel.getTodos()
            
        }.sheet(isPresented: $isSheetOpened, content: {
            VStack{
                Text(lastTodo?.title ?? "")
                Text(String(lastTodo?.completed ?? false))
            }
        })
    }
    
    @ViewBuilder
    var errorView: some View {
        if let returnError = viewModel.returnError {
            ErrorView(error: returnError )
        }
    }
    
}

struct TodoItem_Previews: PreviewProvider {
    static var previews: some View {
        List{
            
            
        }
    }
}
