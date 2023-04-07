import Foundation
import Firebase
struct User{

    let ref: DatabaseReference?
    let key: String
    let fullname: String
    let username: String
    let password: String
    
    init(fullname: String, username: String, password: String, key: String = "") {
        self.ref = nil
        self.key = key
        self.fullname = fullname
        self.username = username
        self.password = password
    }
    
    init?(snapshot: DataSnapshot){
        guard
            let value = snapshot.value as? [String: AnyObject],
            let fullname = value["fullname"] as? String,
            let username = value["username"] as? String,
            let password = value["password"] as? String
        else {
            return nil
        }
        
        self.ref = snapshot.ref
        self.key = snapshot.key
        self.fullname = fullname
        self.username = username
        self.password = password
    }
    
    func toAnyObject() -> Any {
        return [
            "fullname": fullname,
            "username": username,
            "password": password
        ]
    }
}
