//
//  AddTodoController.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2018/12/30.
//  Copyright © 2018年 山田 俊輔. All rights reserved.
//

import UIKit

class AddTodoController: UIViewController {

    
    @IBOutlet weak var todoTextField: UITextField!
    
    @IBAction func addTodoText(_ sender: Any) {
        var addList = Storage.shared.todoList
        addList.append(todoTextField.text!)
        Storage.shared.todoList = addList
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
