//
//  EditTodoController.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2019/01/05.
//  Copyright © 2019年 山田 俊輔. All rights reserved.
//

import UIKit

class EditTodoController: UIViewController {
    
    var todoModel = Todo(index: 0, todoText: "")

    @IBOutlet weak var todoText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoText.text = todoModel.todoText
        // Do any additional setup after loading the view.
    }

    @IBAction func updateTodo(_ sender: Any) {
        var addList = Storage.shared.todoList
        addList[todoModel.index] = todoText.text!
        Storage.shared.todoList = addList
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
