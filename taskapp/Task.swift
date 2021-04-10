
import RealmSwift

class Task: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0
    
    // カテゴリー
    @objc dynamic var category = ""

    // タイトル
    @objc dynamic var title = ""

    // 内容
    @objc dynamic var contents = ""

    // 日時
    @objc dynamic var date = Date()
    
    convenience init(category: String, title: String) {
        self.init()
        self.category = ""
        self.title = ""
    }

    // id をプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
}
