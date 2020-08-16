//
//  AddController.swift
//  MyToDo
//
//  Created by Marina Miyamoto on 2019/09/22.
//  Copyright © 2019 Marina Miyamoto. All rights reserved.
//

import UIKit

//内容を保存するための配列型の変数
var IndividualContent = [String]()

class AddController: UIViewController {
    
    @IBOutlet weak var ToDoTextField: UITextField!
    
    @IBAction func ToDoAddButton(_ sender: Any) {
        IndividualContent.append(ToDoTextField.text!)
        ToDoTextField.text = ""
        UserDefaults.standard.set(IndividualContent, forKey: "ToDoList")
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
