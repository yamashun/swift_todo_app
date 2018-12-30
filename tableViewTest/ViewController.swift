//
//  ViewController.swift
//  tableViewTest
//
//  Created by 山田 俊輔 on 2018/12/30.
//  Copyright © 2018年 山田 俊輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let TODO = ["牛乳を買う", "掃除をする", "アプリ開発の勉強をする"]
    let CellID = "cell"
    let TodoCellID = "TodoListCell"
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellID)
        tableView.register(UINib(nibName: TodoCellID, bundle: nil), forCellReuseIdentifier: TodoCellID)
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TODO.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: TodoCellID, for: indexPath) as! TodoListCell
        cell.todoText.text = TODO[indexPath.row]
        
        return cell
    }


}

