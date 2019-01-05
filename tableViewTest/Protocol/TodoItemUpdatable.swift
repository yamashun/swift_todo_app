//
//  TodoItemUpdatable.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2019/01/05.
//  Copyright © 2019年 山田 俊輔. All rights reserved.
//

import Foundation

protocol TodoItemUpdatable {
    func deleteTodo(cell: TodoListCell)
    func editTodo(cell: TodoListCell)
}
