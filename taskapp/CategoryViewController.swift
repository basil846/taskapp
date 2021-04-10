
import UIKit
import RealmSwift

class CategoryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var categoryTextField: UITextField!
    @IBOutlet weak var addCategory: UIButton!
    @IBOutlet weak var resetCategory: UIButton!
    
    let realm = try! Realm()
    var catego: Category!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.displayLabel.text = ""
        
        categoryTextField.delegate = self
    }
    
    @IBAction func addButton(_ sender: Any) {
        let textField: String? = categoryTextField.text
        let name = Category()
        name.categoryName = textField.self!

        try! realm.write {
            realm.add(name)
        }
        displayLabel.text = "追加しました"
        displayLabel.textAlignment = NSTextAlignment.center
    }
    
    @IBAction func resetButton(_ sender: Any) {
        _ = Category()
        let resetName = realm.objects(Category.self)
        for _ in 1...resetName.count {
            var i = 0
            try! realm.write {
                realm.delete(resetName[i])
            }
            i += 1
        }
        displayLabel.text = "リセットしました"
        displayLabel.textAlignment = NSTextAlignment.center
    }
}
