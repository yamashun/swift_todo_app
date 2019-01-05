//
//  ViewController.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2018/12/30.
//  Copyright © 2018年 山田 俊輔. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var todoList: [String] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    let CellID = "cell"
    let TodoCellID = "TodoListCell"
    
    var cellDelegate: TodoItemUpdatable?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellID)
        tableView.register(UINib(nibName: TodoCellID, bundle: nil), forCellReuseIdentifier: TodoCellID)
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
        tableView.delegate = self
        
        todoList = Storage.shared.todoList
    }
}

extension ViewController: TodoItemUpdatable, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoCellID, for: indexPath) as! TodoListCell
        cell.todoText.text = todoList[indexPath.row]
        cell.todoCellDelegate = self
        cell.cellIndex = indexPath.row
        
        return cell
    }
    
    func pushAddPage(_ ボタン: UIButton) {
        
    }
    
    func deleteTodo(cell: TodoListCell) {
        Storage.shared.todoList.remove(at: cell.cellIndex)
        todoList = Storage.shared.todoList
    }
    
    func editTodo(cell: TodoListCell) {
        
    }
}

