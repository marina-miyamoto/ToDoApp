//
//  ViewController.swift
//  MyToDo
//
//  Created by Marina Miyamoto on 2019/09/22.
//  Copyright © 2019 Marina Miyamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return IndividualContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ToDoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        ToDoCell.textLabel!.text = IndividualContent[indexPath.row]
        return ToDoCell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if UserDefaults.standard.object(forKey: "ToDoList") != nil {
            IndividualContent = UserDefaults.standard.object(forKey: "ToDoList") as! [String]
        }
        
        
    }


}

