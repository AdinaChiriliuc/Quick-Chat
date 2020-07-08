//
//  Constants.swift
//  Quick Chat
//
//  Created by Adina Chiriliuc on 07/07/2020.
//  Copyright © 2020 Adina Chiriliuc. All rights reserved.
//

struct K {
    static let appName = "Quick Chat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    
    struct QStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
