//
//  TodoListCell.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2018/12/30.
//  Copyright © 2018年 山田 俊輔. All rights reserved.
//

import UIKit

class TodoListCell: UITableViewCell {

    @IBOutlet weak var todoText: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    var todoCellDelegate: TodoItemUpdatable?
    var cellIndex: Int = 0
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @IBAction func deleteTodo(_ sender: Any) {
        todoCellDelegate?.deleteTodo(cell: self)
    }
    
    @IBAction func editTodo(_ sender: Any) {
        todoCellDelegate?.editTodo(cell: self)
    }
    
}
