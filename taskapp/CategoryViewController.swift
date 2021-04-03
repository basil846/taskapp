//
//  CategoryViewController.swift
//  taskapp
//
//  Created by 森本記庸 on 2021/03/30.
//

import UIKit
import RealmSwift

class CategoryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addCategory: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    let realm = try! Realm()
    var catego: Category!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        let obj = Category()
        obj.category = addCategory.text!
               
        try! realm.write {
            realm.add(obj)
            print("保存完了")
        }
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
